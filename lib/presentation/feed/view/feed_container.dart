import 'dart:io';

import 'package:abbay/domain/usecase/get_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_current_audiobook.dart';
import 'package:abbay/presentation/feed/feed_cubit.dart';
import 'package:abbay/presentation/feed/state/feed_ui_state.dart';
import 'package:abbay/presentation/mini_player/mini_player_cubit.dart';
import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import 'feed_page.dart';

class FeedContainer extends StatelessWidget {
  const FeedContainer({
    required this.bloc,
    Key? key,
  }) : super(key: key);

  static Widget create() => ProxyProvider3<
          GetAudioBooksLocation,
          SaveAudioBooksLocation,
          SaveCurrentAudioBook,
          FeedCubit>(
        update: (
          context,
          getAudioBooksLocation,
          saveAudioBooksLocation,
          saveCurrentAudioBook,
          bloc,
        ) =>
            bloc ??
            FeedCubit(
              getAudioBooksLocation: getAudioBooksLocation,
              saveAudioBooksLocation: saveAudioBooksLocation,
              saveCurrentAudiobook: saveCurrentAudioBook,
              miniPlayerBloc: Provider.of<MiniPlayerCubit>(context),
            ),
        child: Consumer<FeedCubit>(
          builder: (_, bloc, __) => FeedContainer(
            bloc: bloc,
          ),
        ),
      );

  final FeedCubit bloc;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Abbay"),
    ),
        body: FocusDetector(
          onFocusGained: () {
            _requestPermission();
          },
          child: MultiBlocProvider(
            providers: [
              BlocProvider<FeedCubit>(
                create: (_) => bloc,
              ),
            ],
            child: BlocListener<FeedCubit, FeedUiState>(
              listener: (_, state) {
                _choseFilesFolder(context);
              },
              listenWhen: (_, state) => state is RequestFileLocationAction,
              child: BlocBuilder<FeedCubit, FeedUiState>(
                bloc: bloc,
                builder: (_, FeedUiState state) => state.maybeWhen(
                  success: (fileList) => FeedPage(
                    filesList: fileList,
                    bloc: bloc,
                  ),
                  noAudioBooks: () => Container(
                    width: MediaQuery.of(context).size.width,
                    height:  MediaQuery.of(context).size.height,
                    color: Colors.green,
                  ),
                  failure: (_) => Container(
                    width: MediaQuery.of(context).size.width,
                    height:  MediaQuery.of(context).size.height,
                    color: Colors.red,
                  ),
                  noPermissionGranted: () => _NoPermissionEmptyState(
                    requestPermission: (status) async {
                      openAppSettings();
                    },
                  ),
                  noLocationSelected: () => _NoLocationEmptyState(
                    selectLocation: () => _choseFilesFolder(context),
                  ),
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Future<void> _requestPermission() async {
    final hasStorePermission = await Permission.storage.isGranted;
    if (!hasStorePermission) {
      final status = await Permission.storage.request();

      bloc.changePermissionStatus(status);
    } else {
      bloc.getFilesList(null);
    }
  }

  void _choseFilesFolder(BuildContext context) async {
    await Permission.storage.request();
    final Directory root = Directory("storage/emulated/0/");

    String? path = await FilesystemPicker.open(
      title: 'Select folder',
      context: context,
      rootDirectory: root,
      fsType: FilesystemType.folder,
      pickText: 'Select folder',
      requestPermission: () => Future.value(true),
    );

    bloc.getFilesList(path);
  }
}

class _NoPermissionEmptyState extends StatelessWidget {
  const _NoPermissionEmptyState({
    required this.requestPermission,
  });

  final Function(PermissionStatus status) requestPermission;

  @override
  Widget build(BuildContext context) => Center(
        child: MaterialButton(
          child: Text("Request permission"),
          onPressed: () async {
            final status = await Permission.storage.request();
            requestPermission(status);
          },
        ),
      );
}

class _NoLocationEmptyState extends StatelessWidget {
  const _NoLocationEmptyState({
    required this.selectLocation,
  });

  final VoidCallback selectLocation;

  @override
  Widget build(BuildContext context) => Center(
        child: MaterialButton(
          child: Text("Select Location"),
          onPressed: selectLocation,
        ),
      );
}

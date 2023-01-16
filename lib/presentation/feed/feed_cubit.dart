import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/domain/usecase/get_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_current_audiobook.dart';
import 'package:abbay/presentation/mini_player/mini_player_cubit.dart';
import 'package:abbay/presentation/mini_player/state/mini_player_ui_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'state/feed_ui_state.dart';
import 'dart:core';

class FeedCubit extends Cubit<FeedUiState> {
  FeedCubit({
    required this.getAudioBooksLocation,
    required this.saveAudioBooksLocation,
    required this.saveCurrentAudiobook,
    required this.miniPlayerBloc,
  }) : super(const Loading());

  final GetAudioBooksLocation getAudioBooksLocation;
  final SaveAudioBooksLocation saveAudioBooksLocation;
  final SaveCurrentAudioBook saveCurrentAudiobook;
  final MiniPlayerCubit miniPlayerBloc;
  List<FileSystemEntity> filesList = [];

  void changePermissionStatus(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.denied:
        {
          emit(const NoPermission());
          break;
        }
      case PermissionStatus.permanentlyDenied:
        {
          emit(const NoPermission());
          break;
        }
      default:
        {
          emit(const Loading());
          emit(const RequestFileLocationAction());
          break;
        }
    }
  }

  Future<void> getFilesList(String? path) async {
    filesList.clear();
    late String filePath;

    if (path != null) {
      await saveAudioBooksLocation(path);
      filePath = path;
    } else {
      filePath = await getAudioBooksLocation();
    }

    if (filePath.isEmpty) {
      emit(const NoLocationSelected());
    } else {
      filesList.addAll(Directory(filePath).listSync());

      emit(Success(filesList));
    }
  }

  Future<void> selectAudiobook(int index) async {
    final filePath = Directory(filesList[index].path)
        .listSync()
        .where(
          (file) => (file.path.contains(".m4b") || file.path.contains(".mp3")),
        )
        .first;

    try {
      await saveCurrentAudiobook(
        Audiobook(
          path: filePath.path,
          name: "",
          imageUrl: "imageUrl",
          totalTime: 100,
        ),
      );

      await miniPlayerBloc.getCurrentAudiobook();
    } catch (error) {
      //
    }
  }

  Future<void> playAudiobook() async => miniPlayerBloc.playAudiobook();

  void dispose() {
    close();
  }
}

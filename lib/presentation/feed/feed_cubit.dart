import 'dart:core';
import 'dart:io';

import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/domain/usecase/get_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_current_audiobook.dart';
import 'package:abbay/presentation/mini_player/mini_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_media_metadata/flutter_media_metadata.dart';
import 'package:permission_handler/permission_handler.dart';

import 'state/feed_ui_state.dart';

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
  List<Audiobook> filesList = [];

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
      final directoryList = Directory(filePath).listSync();
      final mappedList = directoryList
          .where(
            (folder) => _hasAudiobookInFolder(folder.path),
          )
          .map(
            (folder) => _mapFolderToFile(folder.path),
          )
          .map(
        (file) async {
          final metadata = await MetadataRetriever.fromFile(
            File(file.path),
          );

          return Audiobook(
            path: file.path,
            name: metadata.trackName ?? "",
            imageUrl: metadata.albumArt,
            timeListened: 0,
            totalTime: metadata.trackDuration ?? 0,
          );
        },
      ).toList();

      final tempFileList = await Future.wait(mappedList);
      filesList.addAll(tempFileList);
      emit(Success(filesList));
    }
  }

  FileSystemEntity _mapFolderToFile(String folderPath) => Directory(folderPath)
      .listSync()
      .where(
        (file) => (file.path.contains(".m4b") || file.path.contains(".mp3")),
      )
      .first;

  bool _hasAudiobookInFolder(String folderPath) => Directory(folderPath)
      .listSync()
      .where(
        (file) => (file.path.contains(".m4b") || file.path.contains(".mp3")),
      )
      .isNotEmpty;

  Future<void> selectAudiobook(int index) async {
    try {
      final file = filesList[index];

      await saveCurrentAudiobook(
        Audiobook(
          path: file.path,
          name: file.name,
          imageUrl: file.imageUrl,
          timeListened: file.timeListened,
          totalTime: file.totalTime,
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

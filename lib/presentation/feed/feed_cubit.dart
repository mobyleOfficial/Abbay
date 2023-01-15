import 'package:abbay/domain/usecase/get_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_audiobooks_location.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'state/feed_ui_state.dart';

class FeedCubit extends Cubit<FeedUiState> {
  FeedCubit({
    required this.getAudioBooksLocation,
    required this.saveAudioBooksLocation,
  }) : super(const Loading());

  final GetAudioBooksLocation getAudioBooksLocation;
  final SaveAudioBooksLocation saveAudioBooksLocation;

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
    late String filePath;

    if (path != null) {
      await saveAudioBooksLocation(path);
      filePath = path;
    } else {
      filePath = await getAudioBooksLocation();
    }

    if(filePath.isEmpty) {
      emit(const NoLocationSelected());
    } else {
      final filesList = Directory(filePath).listSync();
      emit(Success(filesList));
    }
  }

  void dispose() {
    close();
  }
}

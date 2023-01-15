import 'dart:io';

import 'package:abbay/presentation/audiobook/state/audiobook_ui_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

class AudiobookCubit extends Cubit<AudiobookUiState> {
  AudiobookCubit({
    required this.player,
  }) : super(const Loading());

  final AudioPlayer player;
  String? _path;

  Future<void> getFolderFile(String path) async {
    final filePath = Directory(path)
        .listSync()
        .where(
          (file) => (file.path.contains(".m4b") || file.path.contains(".mp3")),
        )
        .first;

    _path = filePath.path;

    emit(const AudiobookFound());
  }

  Future<void> playAudiobook() async {
    if(!player.playing) {
      if(_path != null) {
        await player.setUrl(_path!);
        player.play();
      }
    }
  }

  void pauseAudiobook() async {
    player.pause();
  }
}

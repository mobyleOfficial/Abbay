import 'dart:io';

import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/domain/usecase/get_current_audiobook.dart';
import 'package:abbay/presentation/mini_player/state/mini_player_ui_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

class MiniPlayerCubit extends Cubit<MiniPlayerUiState> {
  MiniPlayerCubit({
    required this.player,
    required this.getCurrentAudiobookUseCase,
  }) : super(const Idle());

  final AudioPlayer player;
  final GetCurrentAudiobook getCurrentAudiobookUseCase;
  Audiobook? _audiobook;

  Future<void> getCurrentAudiobook() async {
    final audiobook = await getCurrentAudiobookUseCase();

    if (audiobook == null) {
      emit(const HidePlayerAction());
    } else {
      _audiobook = audiobook;
      emit(const ShowPlayerAction());
    }
  }

  Future<void> getFolderFile() async {
    if (_audiobook != null) {
      Directory(_audiobook!.path)
          .listSync()
          .where(
            (file) =>
                (file.path.contains(".m4b") || file.path.contains(".mp3")),
          )
          .first;

      emit(const AudiobookFound());
    } else {
      emit(const HidePlayerAction());
    }
  }

  Future<void> playAudiobook() async {
    if (!player.playing) {
      if (_audiobook != null) {
        await player.setUrl(_audiobook!.path);
        player.play();
      }
    }
  }

  void pauseAudiobook() async {
    player.pause();
  }
}

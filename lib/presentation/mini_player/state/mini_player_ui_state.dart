import 'package:abbay/domain/model/audiobook.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mini_player_ui_state.freezed.dart';

@freezed
class MiniPlayerUiState with _$MiniPlayerUiState {
  const factory MiniPlayerUiState.idle() = Idle;

  const factory MiniPlayerUiState.audiobookFound() = AudiobookFound;

  const factory MiniPlayerUiState.showPlayerAction(Audiobook audiobook) = ShowPlayerAction;

  const factory MiniPlayerUiState.hidePlayerAction() = HidePlayerAction;
}
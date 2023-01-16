import 'package:freezed_annotation/freezed_annotation.dart';

part 'mini_player_ui_state.freezed.dart';

@freezed
class MiniPlayerUiState with _$MiniPlayerUiState {
  const factory MiniPlayerUiState.idle() = Idle;

  const factory MiniPlayerUiState.audiobookFound() = AudiobookFound;

  const factory MiniPlayerUiState.showPlayerAction() = ShowPlayerAction;

  const factory MiniPlayerUiState.hidePlayerAction() = HidePlayerAction;
}
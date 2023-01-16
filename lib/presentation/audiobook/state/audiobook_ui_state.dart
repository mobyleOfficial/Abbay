import 'package:freezed_annotation/freezed_annotation.dart';

part 'audiobook_ui_state.freezed.dart';

@freezed
class AudiobookUiState with _$AudiobookUiState {
  const factory AudiobookUiState.loading() = Loading;

  const factory AudiobookUiState.audiobookFound() = AudiobookFound;
}
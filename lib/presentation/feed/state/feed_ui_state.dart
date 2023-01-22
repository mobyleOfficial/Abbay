import 'dart:io';

import 'package:abbay/domain/errors/abbay_errors.dart';
import 'package:abbay/domain/model/audiobook.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_ui_state.freezed.dart';

@freezed
class FeedUiState with _$FeedUiState {
  const factory FeedUiState.loading() = Loading;

  const factory FeedUiState.success(List<Audiobook> data) = Success;

  const factory FeedUiState.failure(AbbayErrors error) = Failure;

  const factory FeedUiState.noAudioBooks() = NoAudioBooks;

  const factory FeedUiState.noPermissionGranted() = NoPermission;

  const factory FeedUiState.noLocationSelected() = NoLocationSelected;

  const factory FeedUiState.requestFileLocationAction() = RequestFileLocationAction;
}
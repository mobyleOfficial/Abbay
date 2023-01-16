// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mini_player_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MiniPlayerUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() audiobookFound,
    required TResult Function() showPlayerAction,
    required TResult Function() hidePlayerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? audiobookFound,
    TResult? Function()? showPlayerAction,
    TResult? Function()? hidePlayerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? audiobookFound,
    TResult Function()? showPlayerAction,
    TResult Function()? hidePlayerAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(AudiobookFound value) audiobookFound,
    required TResult Function(ShowPlayerAction value) showPlayerAction,
    required TResult Function(HidePlayerAction value) hidePlayerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(AudiobookFound value)? audiobookFound,
    TResult? Function(ShowPlayerAction value)? showPlayerAction,
    TResult? Function(HidePlayerAction value)? hidePlayerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(AudiobookFound value)? audiobookFound,
    TResult Function(ShowPlayerAction value)? showPlayerAction,
    TResult Function(HidePlayerAction value)? hidePlayerAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniPlayerUiStateCopyWith<$Res> {
  factory $MiniPlayerUiStateCopyWith(
          MiniPlayerUiState value, $Res Function(MiniPlayerUiState) then) =
      _$MiniPlayerUiStateCopyWithImpl<$Res, MiniPlayerUiState>;
}

/// @nodoc
class _$MiniPlayerUiStateCopyWithImpl<$Res, $Val extends MiniPlayerUiState>
    implements $MiniPlayerUiStateCopyWith<$Res> {
  _$MiniPlayerUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleCopyWith<$Res> {
  factory _$$IdleCopyWith(_$Idle value, $Res Function(_$Idle) then) =
      __$$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleCopyWithImpl<$Res>
    extends _$MiniPlayerUiStateCopyWithImpl<$Res, _$Idle>
    implements _$$IdleCopyWith<$Res> {
  __$$IdleCopyWithImpl(_$Idle _value, $Res Function(_$Idle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'MiniPlayerUiState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() audiobookFound,
    required TResult Function() showPlayerAction,
    required TResult Function() hidePlayerAction,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? audiobookFound,
    TResult? Function()? showPlayerAction,
    TResult? Function()? hidePlayerAction,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? audiobookFound,
    TResult Function()? showPlayerAction,
    TResult Function()? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(AudiobookFound value) audiobookFound,
    required TResult Function(ShowPlayerAction value) showPlayerAction,
    required TResult Function(HidePlayerAction value) hidePlayerAction,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(AudiobookFound value)? audiobookFound,
    TResult? Function(ShowPlayerAction value)? showPlayerAction,
    TResult? Function(HidePlayerAction value)? hidePlayerAction,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(AudiobookFound value)? audiobookFound,
    TResult Function(ShowPlayerAction value)? showPlayerAction,
    TResult Function(HidePlayerAction value)? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements MiniPlayerUiState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class _$$AudiobookFoundCopyWith<$Res> {
  factory _$$AudiobookFoundCopyWith(
          _$AudiobookFound value, $Res Function(_$AudiobookFound) then) =
      __$$AudiobookFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudiobookFoundCopyWithImpl<$Res>
    extends _$MiniPlayerUiStateCopyWithImpl<$Res, _$AudiobookFound>
    implements _$$AudiobookFoundCopyWith<$Res> {
  __$$AudiobookFoundCopyWithImpl(
      _$AudiobookFound _value, $Res Function(_$AudiobookFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudiobookFound implements AudiobookFound {
  const _$AudiobookFound();

  @override
  String toString() {
    return 'MiniPlayerUiState.audiobookFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudiobookFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() audiobookFound,
    required TResult Function() showPlayerAction,
    required TResult Function() hidePlayerAction,
  }) {
    return audiobookFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? audiobookFound,
    TResult? Function()? showPlayerAction,
    TResult? Function()? hidePlayerAction,
  }) {
    return audiobookFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? audiobookFound,
    TResult Function()? showPlayerAction,
    TResult Function()? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (audiobookFound != null) {
      return audiobookFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(AudiobookFound value) audiobookFound,
    required TResult Function(ShowPlayerAction value) showPlayerAction,
    required TResult Function(HidePlayerAction value) hidePlayerAction,
  }) {
    return audiobookFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(AudiobookFound value)? audiobookFound,
    TResult? Function(ShowPlayerAction value)? showPlayerAction,
    TResult? Function(HidePlayerAction value)? hidePlayerAction,
  }) {
    return audiobookFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(AudiobookFound value)? audiobookFound,
    TResult Function(ShowPlayerAction value)? showPlayerAction,
    TResult Function(HidePlayerAction value)? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (audiobookFound != null) {
      return audiobookFound(this);
    }
    return orElse();
  }
}

abstract class AudiobookFound implements MiniPlayerUiState {
  const factory AudiobookFound() = _$AudiobookFound;
}

/// @nodoc
abstract class _$$ShowPlayerActionCopyWith<$Res> {
  factory _$$ShowPlayerActionCopyWith(
          _$ShowPlayerAction value, $Res Function(_$ShowPlayerAction) then) =
      __$$ShowPlayerActionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPlayerActionCopyWithImpl<$Res>
    extends _$MiniPlayerUiStateCopyWithImpl<$Res, _$ShowPlayerAction>
    implements _$$ShowPlayerActionCopyWith<$Res> {
  __$$ShowPlayerActionCopyWithImpl(
      _$ShowPlayerAction _value, $Res Function(_$ShowPlayerAction) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPlayerAction implements ShowPlayerAction {
  const _$ShowPlayerAction();

  @override
  String toString() {
    return 'MiniPlayerUiState.showPlayerAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPlayerAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() audiobookFound,
    required TResult Function() showPlayerAction,
    required TResult Function() hidePlayerAction,
  }) {
    return showPlayerAction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? audiobookFound,
    TResult? Function()? showPlayerAction,
    TResult? Function()? hidePlayerAction,
  }) {
    return showPlayerAction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? audiobookFound,
    TResult Function()? showPlayerAction,
    TResult Function()? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (showPlayerAction != null) {
      return showPlayerAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(AudiobookFound value) audiobookFound,
    required TResult Function(ShowPlayerAction value) showPlayerAction,
    required TResult Function(HidePlayerAction value) hidePlayerAction,
  }) {
    return showPlayerAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(AudiobookFound value)? audiobookFound,
    TResult? Function(ShowPlayerAction value)? showPlayerAction,
    TResult? Function(HidePlayerAction value)? hidePlayerAction,
  }) {
    return showPlayerAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(AudiobookFound value)? audiobookFound,
    TResult Function(ShowPlayerAction value)? showPlayerAction,
    TResult Function(HidePlayerAction value)? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (showPlayerAction != null) {
      return showPlayerAction(this);
    }
    return orElse();
  }
}

abstract class ShowPlayerAction implements MiniPlayerUiState {
  const factory ShowPlayerAction() = _$ShowPlayerAction;
}

/// @nodoc
abstract class _$$HidePlayerActionCopyWith<$Res> {
  factory _$$HidePlayerActionCopyWith(
          _$HidePlayerAction value, $Res Function(_$HidePlayerAction) then) =
      __$$HidePlayerActionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HidePlayerActionCopyWithImpl<$Res>
    extends _$MiniPlayerUiStateCopyWithImpl<$Res, _$HidePlayerAction>
    implements _$$HidePlayerActionCopyWith<$Res> {
  __$$HidePlayerActionCopyWithImpl(
      _$HidePlayerAction _value, $Res Function(_$HidePlayerAction) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HidePlayerAction implements HidePlayerAction {
  const _$HidePlayerAction();

  @override
  String toString() {
    return 'MiniPlayerUiState.hidePlayerAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HidePlayerAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() audiobookFound,
    required TResult Function() showPlayerAction,
    required TResult Function() hidePlayerAction,
  }) {
    return hidePlayerAction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? audiobookFound,
    TResult? Function()? showPlayerAction,
    TResult? Function()? hidePlayerAction,
  }) {
    return hidePlayerAction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? audiobookFound,
    TResult Function()? showPlayerAction,
    TResult Function()? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (hidePlayerAction != null) {
      return hidePlayerAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(AudiobookFound value) audiobookFound,
    required TResult Function(ShowPlayerAction value) showPlayerAction,
    required TResult Function(HidePlayerAction value) hidePlayerAction,
  }) {
    return hidePlayerAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(AudiobookFound value)? audiobookFound,
    TResult? Function(ShowPlayerAction value)? showPlayerAction,
    TResult? Function(HidePlayerAction value)? hidePlayerAction,
  }) {
    return hidePlayerAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(AudiobookFound value)? audiobookFound,
    TResult Function(ShowPlayerAction value)? showPlayerAction,
    TResult Function(HidePlayerAction value)? hidePlayerAction,
    required TResult orElse(),
  }) {
    if (hidePlayerAction != null) {
      return hidePlayerAction(this);
    }
    return orElse();
  }
}

abstract class HidePlayerAction implements MiniPlayerUiState {
  const factory HidePlayerAction() = _$HidePlayerAction;
}

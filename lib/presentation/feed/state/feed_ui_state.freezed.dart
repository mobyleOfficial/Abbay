// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedUiStateCopyWith<$Res> {
  factory $FeedUiStateCopyWith(
          FeedUiState value, $Res Function(FeedUiState) then) =
      _$FeedUiStateCopyWithImpl<$Res, FeedUiState>;
}

/// @nodoc
class _$FeedUiStateCopyWithImpl<$Res, $Val extends FeedUiState>
    implements $FeedUiStateCopyWith<$Res> {
  _$FeedUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$FeedUiStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'FeedUiState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FeedUiState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FileSystemEntity> data});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$FeedUiStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$Success(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FileSystemEntity>,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(final List<FileSystemEntity> data) : _data = data;

  final List<FileSystemEntity> _data;
  @override
  List<FileSystemEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FeedUiState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements FeedUiState {
  const factory Success(final List<FileSystemEntity> data) = _$Success;

  List<FileSystemEntity> get data;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AbbayErrors error});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res>
    extends _$FeedUiStateCopyWithImpl<$Res, _$Failure>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Failure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AbbayErrors,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.error);

  @override
  final AbbayErrors error;

  @override
  String toString() {
    return 'FeedUiState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements FeedUiState {
  const factory Failure(final AbbayErrors error) = _$Failure;

  AbbayErrors get error;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAudioBooksCopyWith<$Res> {
  factory _$$NoAudioBooksCopyWith(
          _$NoAudioBooks value, $Res Function(_$NoAudioBooks) then) =
      __$$NoAudioBooksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAudioBooksCopyWithImpl<$Res>
    extends _$FeedUiStateCopyWithImpl<$Res, _$NoAudioBooks>
    implements _$$NoAudioBooksCopyWith<$Res> {
  __$$NoAudioBooksCopyWithImpl(
      _$NoAudioBooks _value, $Res Function(_$NoAudioBooks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoAudioBooks implements NoAudioBooks {
  const _$NoAudioBooks();

  @override
  String toString() {
    return 'FeedUiState.noAudioBooks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAudioBooks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) {
    return noAudioBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) {
    return noAudioBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (noAudioBooks != null) {
      return noAudioBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) {
    return noAudioBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) {
    return noAudioBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (noAudioBooks != null) {
      return noAudioBooks(this);
    }
    return orElse();
  }
}

abstract class NoAudioBooks implements FeedUiState {
  const factory NoAudioBooks() = _$NoAudioBooks;
}

/// @nodoc
abstract class _$$NoPermissionCopyWith<$Res> {
  factory _$$NoPermissionCopyWith(
          _$NoPermission value, $Res Function(_$NoPermission) then) =
      __$$NoPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoPermissionCopyWithImpl<$Res>
    extends _$FeedUiStateCopyWithImpl<$Res, _$NoPermission>
    implements _$$NoPermissionCopyWith<$Res> {
  __$$NoPermissionCopyWithImpl(
      _$NoPermission _value, $Res Function(_$NoPermission) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoPermission implements NoPermission {
  const _$NoPermission();

  @override
  String toString() {
    return 'FeedUiState.noPermissionGranted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) {
    return noPermissionGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) {
    return noPermissionGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (noPermissionGranted != null) {
      return noPermissionGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) {
    return noPermissionGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) {
    return noPermissionGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (noPermissionGranted != null) {
      return noPermissionGranted(this);
    }
    return orElse();
  }
}

abstract class NoPermission implements FeedUiState {
  const factory NoPermission() = _$NoPermission;
}

/// @nodoc
abstract class _$$NoLocationSelectedCopyWith<$Res> {
  factory _$$NoLocationSelectedCopyWith(_$NoLocationSelected value,
          $Res Function(_$NoLocationSelected) then) =
      __$$NoLocationSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoLocationSelectedCopyWithImpl<$Res>
    extends _$FeedUiStateCopyWithImpl<$Res, _$NoLocationSelected>
    implements _$$NoLocationSelectedCopyWith<$Res> {
  __$$NoLocationSelectedCopyWithImpl(
      _$NoLocationSelected _value, $Res Function(_$NoLocationSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoLocationSelected implements NoLocationSelected {
  const _$NoLocationSelected();

  @override
  String toString() {
    return 'FeedUiState.noLocationSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoLocationSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) {
    return noLocationSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) {
    return noLocationSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (noLocationSelected != null) {
      return noLocationSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) {
    return noLocationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) {
    return noLocationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (noLocationSelected != null) {
      return noLocationSelected(this);
    }
    return orElse();
  }
}

abstract class NoLocationSelected implements FeedUiState {
  const factory NoLocationSelected() = _$NoLocationSelected;
}

/// @nodoc
abstract class _$$RequestFileLocationActionCopyWith<$Res> {
  factory _$$RequestFileLocationActionCopyWith(
          _$RequestFileLocationAction value,
          $Res Function(_$RequestFileLocationAction) then) =
      __$$RequestFileLocationActionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestFileLocationActionCopyWithImpl<$Res>
    extends _$FeedUiStateCopyWithImpl<$Res, _$RequestFileLocationAction>
    implements _$$RequestFileLocationActionCopyWith<$Res> {
  __$$RequestFileLocationActionCopyWithImpl(_$RequestFileLocationAction _value,
      $Res Function(_$RequestFileLocationAction) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestFileLocationAction implements RequestFileLocationAction {
  const _$RequestFileLocationAction();

  @override
  String toString() {
    return 'FeedUiState.requestFileLocationAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFileLocationAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileSystemEntity> data) success,
    required TResult Function(AbbayErrors error) failure,
    required TResult Function() noAudioBooks,
    required TResult Function() noPermissionGranted,
    required TResult Function() noLocationSelected,
    required TResult Function() requestFileLocationAction,
  }) {
    return requestFileLocationAction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileSystemEntity> data)? success,
    TResult? Function(AbbayErrors error)? failure,
    TResult? Function()? noAudioBooks,
    TResult? Function()? noPermissionGranted,
    TResult? Function()? noLocationSelected,
    TResult? Function()? requestFileLocationAction,
  }) {
    return requestFileLocationAction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileSystemEntity> data)? success,
    TResult Function(AbbayErrors error)? failure,
    TResult Function()? noAudioBooks,
    TResult Function()? noPermissionGranted,
    TResult Function()? noLocationSelected,
    TResult Function()? requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (requestFileLocationAction != null) {
      return requestFileLocationAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(NoAudioBooks value) noAudioBooks,
    required TResult Function(NoPermission value) noPermissionGranted,
    required TResult Function(NoLocationSelected value) noLocationSelected,
    required TResult Function(RequestFileLocationAction value)
        requestFileLocationAction,
  }) {
    return requestFileLocationAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(NoAudioBooks value)? noAudioBooks,
    TResult? Function(NoPermission value)? noPermissionGranted,
    TResult? Function(NoLocationSelected value)? noLocationSelected,
    TResult? Function(RequestFileLocationAction value)?
        requestFileLocationAction,
  }) {
    return requestFileLocationAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(NoAudioBooks value)? noAudioBooks,
    TResult Function(NoPermission value)? noPermissionGranted,
    TResult Function(NoLocationSelected value)? noLocationSelected,
    TResult Function(RequestFileLocationAction value)?
        requestFileLocationAction,
    required TResult orElse(),
  }) {
    if (requestFileLocationAction != null) {
      return requestFileLocationAction(this);
    }
    return orElse();
  }
}

abstract class RequestFileLocationAction implements FeedUiState {
  const factory RequestFileLocationAction() = _$RequestFileLocationAction;
}

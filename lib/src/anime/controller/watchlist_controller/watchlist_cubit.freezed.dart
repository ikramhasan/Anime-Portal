// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watchlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WatchlistState _$WatchlistStateFromJson(Map<String, dynamic> json) {
  return _WatchlistState.fromJson(json);
}

/// @nodoc
class _$WatchlistStateTearOff {
  const _$WatchlistStateTearOff();

  _WatchlistState call(
      {required bool loading,
      required Failure failure,
      required List<Top> watchlist}) {
    return _WatchlistState(
      loading: loading,
      failure: failure,
      watchlist: watchlist,
    );
  }

  WatchlistState fromJson(Map<String, Object?> json) {
    return WatchlistState.fromJson(json);
  }
}

/// @nodoc
const $WatchlistState = _$WatchlistStateTearOff();

/// @nodoc
mixin _$WatchlistState {
  bool get loading => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<Top> get watchlist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchlistStateCopyWith<WatchlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistStateCopyWith<$Res> {
  factory $WatchlistStateCopyWith(
          WatchlistState value, $Res Function(WatchlistState) then) =
      _$WatchlistStateCopyWithImpl<$Res>;
  $Res call({bool loading, Failure failure, List<Top> watchlist});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$WatchlistStateCopyWithImpl<$Res>
    implements $WatchlistStateCopyWith<$Res> {
  _$WatchlistStateCopyWithImpl(this._value, this._then);

  final WatchlistState _value;
  // ignore: unused_field
  final $Res Function(WatchlistState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? failure = freezed,
    Object? watchlist = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      watchlist: watchlist == freezed
          ? _value.watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<Top>,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$WatchlistStateCopyWith<$Res>
    implements $WatchlistStateCopyWith<$Res> {
  factory _$WatchlistStateCopyWith(
          _WatchlistState value, $Res Function(_WatchlistState) then) =
      __$WatchlistStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, Failure failure, List<Top> watchlist});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$WatchlistStateCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res>
    implements _$WatchlistStateCopyWith<$Res> {
  __$WatchlistStateCopyWithImpl(
      _WatchlistState _value, $Res Function(_WatchlistState) _then)
      : super(_value, (v) => _then(v as _WatchlistState));

  @override
  _WatchlistState get _value => super._value as _WatchlistState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? failure = freezed,
    Object? watchlist = freezed,
  }) {
    return _then(_WatchlistState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      watchlist: watchlist == freezed
          ? _value.watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<Top>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WatchlistState implements _WatchlistState {
  const _$_WatchlistState(
      {required this.loading, required this.failure, required this.watchlist});

  factory _$_WatchlistState.fromJson(Map<String, dynamic> json) =>
      _$$_WatchlistStateFromJson(json);

  @override
  final bool loading;
  @override
  final Failure failure;
  @override
  final List<Top> watchlist;

  @override
  String toString() {
    return 'WatchlistState(loading: $loading, failure: $failure, watchlist: $watchlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchlistState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.watchlist, watchlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(watchlist));

  @JsonKey(ignore: true)
  @override
  _$WatchlistStateCopyWith<_WatchlistState> get copyWith =>
      __$WatchlistStateCopyWithImpl<_WatchlistState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WatchlistStateToJson(this);
  }
}

abstract class _WatchlistState implements WatchlistState {
  const factory _WatchlistState(
      {required bool loading,
      required Failure failure,
      required List<Top> watchlist}) = _$_WatchlistState;

  factory _WatchlistState.fromJson(Map<String, dynamic> json) =
      _$_WatchlistState.fromJson;

  @override
  bool get loading;
  @override
  Failure get failure;
  @override
  List<Top> get watchlist;
  @override
  @JsonKey(ignore: true)
  _$WatchlistStateCopyWith<_WatchlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

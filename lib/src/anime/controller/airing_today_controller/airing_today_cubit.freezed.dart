// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airing_today_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AiringTodayStateTearOff {
  const _$AiringTodayStateTearOff();

  _AiringTodayState call(
      {required bool loading,
      required IList<Top> airingToday,
      required Failure failure}) {
    return _AiringTodayState(
      loading: loading,
      airingToday: airingToday,
      failure: failure,
    );
  }
}

/// @nodoc
const $AiringTodayState = _$AiringTodayStateTearOff();

/// @nodoc
mixin _$AiringTodayState {
  bool get loading => throw _privateConstructorUsedError;
  IList<Top> get airingToday => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AiringTodayStateCopyWith<AiringTodayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiringTodayStateCopyWith<$Res> {
  factory $AiringTodayStateCopyWith(
          AiringTodayState value, $Res Function(AiringTodayState) then) =
      _$AiringTodayStateCopyWithImpl<$Res>;
  $Res call({bool loading, IList<Top> airingToday, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$AiringTodayStateCopyWithImpl<$Res>
    implements $AiringTodayStateCopyWith<$Res> {
  _$AiringTodayStateCopyWithImpl(this._value, this._then);

  final AiringTodayState _value;
  // ignore: unused_field
  final $Res Function(AiringTodayState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? airingToday = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      airingToday: airingToday == freezed
          ? _value.airingToday
          : airingToday // ignore: cast_nullable_to_non_nullable
              as IList<Top>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
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
abstract class _$AiringTodayStateCopyWith<$Res>
    implements $AiringTodayStateCopyWith<$Res> {
  factory _$AiringTodayStateCopyWith(
          _AiringTodayState value, $Res Function(_AiringTodayState) then) =
      __$AiringTodayStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, IList<Top> airingToday, Failure failure});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$AiringTodayStateCopyWithImpl<$Res>
    extends _$AiringTodayStateCopyWithImpl<$Res>
    implements _$AiringTodayStateCopyWith<$Res> {
  __$AiringTodayStateCopyWithImpl(
      _AiringTodayState _value, $Res Function(_AiringTodayState) _then)
      : super(_value, (v) => _then(v as _AiringTodayState));

  @override
  _AiringTodayState get _value => super._value as _AiringTodayState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? airingToday = freezed,
    Object? failure = freezed,
  }) {
    return _then(_AiringTodayState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      airingToday: airingToday == freezed
          ? _value.airingToday
          : airingToday // ignore: cast_nullable_to_non_nullable
              as IList<Top>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_AiringTodayState implements _AiringTodayState {
  const _$_AiringTodayState(
      {required this.loading,
      required this.airingToday,
      required this.failure});

  @override
  final bool loading;
  @override
  final IList<Top> airingToday;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'AiringTodayState(loading: $loading, airingToday: $airingToday, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AiringTodayState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.airingToday, airingToday) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(airingToday),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$AiringTodayStateCopyWith<_AiringTodayState> get copyWith =>
      __$AiringTodayStateCopyWithImpl<_AiringTodayState>(this, _$identity);
}

abstract class _AiringTodayState implements AiringTodayState {
  const factory _AiringTodayState(
      {required bool loading,
      required IList<Top> airingToday,
      required Failure failure}) = _$_AiringTodayState;

  @override
  bool get loading;
  @override
  IList<Top> get airingToday;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$AiringTodayStateCopyWith<_AiringTodayState> get copyWith =>
      throw _privateConstructorUsedError;
}

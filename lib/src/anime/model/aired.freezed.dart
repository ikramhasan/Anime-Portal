// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aired.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Aired _$AiredFromJson(Map<String, dynamic> json) {
  return _Aired.fromJson(json);
}

/// @nodoc
class _$AiredTearOff {
  const _$AiredTearOff();

  _Aired call({String? from, String? string, String? to}) {
    return _Aired(
      from: from,
      string: string,
      to: to,
    );
  }

  Aired fromJson(Map<String, Object?> json) {
    return Aired.fromJson(json);
  }
}

/// @nodoc
const $Aired = _$AiredTearOff();

/// @nodoc
mixin _$Aired {
  String? get from => throw _privateConstructorUsedError;
  String? get string => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiredCopyWith<Aired> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiredCopyWith<$Res> {
  factory $AiredCopyWith(Aired value, $Res Function(Aired) then) =
      _$AiredCopyWithImpl<$Res>;
  $Res call({String? from, String? string, String? to});
}

/// @nodoc
class _$AiredCopyWithImpl<$Res> implements $AiredCopyWith<$Res> {
  _$AiredCopyWithImpl(this._value, this._then);

  final Aired _value;
  // ignore: unused_field
  final $Res Function(Aired) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? string = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      string: string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AiredCopyWith<$Res> implements $AiredCopyWith<$Res> {
  factory _$AiredCopyWith(_Aired value, $Res Function(_Aired) then) =
      __$AiredCopyWithImpl<$Res>;
  @override
  $Res call({String? from, String? string, String? to});
}

/// @nodoc
class __$AiredCopyWithImpl<$Res> extends _$AiredCopyWithImpl<$Res>
    implements _$AiredCopyWith<$Res> {
  __$AiredCopyWithImpl(_Aired _value, $Res Function(_Aired) _then)
      : super(_value, (v) => _then(v as _Aired));

  @override
  _Aired get _value => super._value as _Aired;

  @override
  $Res call({
    Object? from = freezed,
    Object? string = freezed,
    Object? to = freezed,
  }) {
    return _then(_Aired(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      string: string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Aired implements _Aired {
  const _$_Aired({this.from, this.string, this.to});

  factory _$_Aired.fromJson(Map<String, dynamic> json) =>
      _$$_AiredFromJson(json);

  @override
  final String? from;
  @override
  final String? string;
  @override
  final String? to;

  @override
  String toString() {
    return 'Aired(from: $from, string: $string, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Aired &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.string, string) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(string),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$AiredCopyWith<_Aired> get copyWith =>
      __$AiredCopyWithImpl<_Aired>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiredToJson(this);
  }
}

abstract class _Aired implements Aired {
  const factory _Aired({String? from, String? string, String? to}) = _$_Aired;

  factory _Aired.fromJson(Map<String, dynamic> json) = _$_Aired.fromJson;

  @override
  String? get from;
  @override
  String? get string;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$AiredCopyWith<_Aired> get copyWith => throw _privateConstructorUsedError;
}

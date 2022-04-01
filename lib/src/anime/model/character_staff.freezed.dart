// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterStaff _$CharacterStaffFromJson(Map<String, dynamic> json) {
  return _CharacterStaff.fromJson(json);
}

/// @nodoc
class _$CharacterStaffTearOff {
  const _$CharacterStaffTearOff();

  _CharacterStaff call(
      {required List<CharacterRole> characters, required List<Staff> staff}) {
    return _CharacterStaff(
      characters: characters,
      staff: staff,
    );
  }

  CharacterStaff fromJson(Map<String, Object?> json) {
    return CharacterStaff.fromJson(json);
  }
}

/// @nodoc
const $CharacterStaff = _$CharacterStaffTearOff();

/// @nodoc
mixin _$CharacterStaff {
  List<CharacterRole> get characters => throw _privateConstructorUsedError;
  List<Staff> get staff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterStaffCopyWith<CharacterStaff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStaffCopyWith<$Res> {
  factory $CharacterStaffCopyWith(
          CharacterStaff value, $Res Function(CharacterStaff) then) =
      _$CharacterStaffCopyWithImpl<$Res>;
  $Res call({List<CharacterRole> characters, List<Staff> staff});
}

/// @nodoc
class _$CharacterStaffCopyWithImpl<$Res>
    implements $CharacterStaffCopyWith<$Res> {
  _$CharacterStaffCopyWithImpl(this._value, this._then);

  final CharacterStaff _value;
  // ignore: unused_field
  final $Res Function(CharacterStaff) _then;

  @override
  $Res call({
    Object? characters = freezed,
    Object? staff = freezed,
  }) {
    return _then(_value.copyWith(
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterRole>,
      staff: staff == freezed
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
    ));
  }
}

/// @nodoc
abstract class _$CharacterStaffCopyWith<$Res>
    implements $CharacterStaffCopyWith<$Res> {
  factory _$CharacterStaffCopyWith(
          _CharacterStaff value, $Res Function(_CharacterStaff) then) =
      __$CharacterStaffCopyWithImpl<$Res>;
  @override
  $Res call({List<CharacterRole> characters, List<Staff> staff});
}

/// @nodoc
class __$CharacterStaffCopyWithImpl<$Res>
    extends _$CharacterStaffCopyWithImpl<$Res>
    implements _$CharacterStaffCopyWith<$Res> {
  __$CharacterStaffCopyWithImpl(
      _CharacterStaff _value, $Res Function(_CharacterStaff) _then)
      : super(_value, (v) => _then(v as _CharacterStaff));

  @override
  _CharacterStaff get _value => super._value as _CharacterStaff;

  @override
  $Res call({
    Object? characters = freezed,
    Object? staff = freezed,
  }) {
    return _then(_CharacterStaff(
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterRole>,
      staff: staff == freezed
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterStaff implements _CharacterStaff {
  const _$_CharacterStaff({required this.characters, required this.staff});

  factory _$_CharacterStaff.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterStaffFromJson(json);

  @override
  final List<CharacterRole> characters;
  @override
  final List<Staff> staff;

  @override
  String toString() {
    return 'CharacterStaff(characters: $characters, staff: $staff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharacterStaff &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.staff, staff));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(staff));

  @JsonKey(ignore: true)
  @override
  _$CharacterStaffCopyWith<_CharacterStaff> get copyWith =>
      __$CharacterStaffCopyWithImpl<_CharacterStaff>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterStaffToJson(this);
  }
}

abstract class _CharacterStaff implements CharacterStaff {
  const factory _CharacterStaff(
      {required List<CharacterRole> characters,
      required List<Staff> staff}) = _$_CharacterStaff;

  factory _CharacterStaff.fromJson(Map<String, dynamic> json) =
      _$_CharacterStaff.fromJson;

  @override
  List<CharacterRole> get characters;
  @override
  List<Staff> get staff;
  @override
  @JsonKey(ignore: true)
  _$CharacterStaffCopyWith<_CharacterStaff> get copyWith =>
      throw _privateConstructorUsedError;
}

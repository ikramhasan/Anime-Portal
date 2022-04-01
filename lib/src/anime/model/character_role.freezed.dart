// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterRole _$CharacterRoleFromJson(Map<String, dynamic> json) {
  return _CharacterRole.fromJson(json);
}

/// @nodoc
class _$CharacterRoleTearOff {
  const _$CharacterRoleTearOff();

  _CharacterRole call(
      {required int id,
      required String name,
      required String role,
      required String url,
      required String imageUrl,
      List<Staff>? voiceActors}) {
    return _CharacterRole(
      id: id,
      name: name,
      role: role,
      url: url,
      imageUrl: imageUrl,
      voiceActors: voiceActors,
    );
  }

  CharacterRole fromJson(Map<String, Object?> json) {
    return CharacterRole.fromJson(json);
  }
}

/// @nodoc
const $CharacterRole = _$CharacterRoleTearOff();

/// @nodoc
mixin _$CharacterRole {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<Staff>? get voiceActors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterRoleCopyWith<CharacterRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterRoleCopyWith<$Res> {
  factory $CharacterRoleCopyWith(
          CharacterRole value, $Res Function(CharacterRole) then) =
      _$CharacterRoleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String role,
      String url,
      String imageUrl,
      List<Staff>? voiceActors});
}

/// @nodoc
class _$CharacterRoleCopyWithImpl<$Res>
    implements $CharacterRoleCopyWith<$Res> {
  _$CharacterRoleCopyWithImpl(this._value, this._then);

  final CharacterRole _value;
  // ignore: unused_field
  final $Res Function(CharacterRole) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? voiceActors = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      voiceActors: voiceActors == freezed
          ? _value.voiceActors
          : voiceActors // ignore: cast_nullable_to_non_nullable
              as List<Staff>?,
    ));
  }
}

/// @nodoc
abstract class _$CharacterRoleCopyWith<$Res>
    implements $CharacterRoleCopyWith<$Res> {
  factory _$CharacterRoleCopyWith(
          _CharacterRole value, $Res Function(_CharacterRole) then) =
      __$CharacterRoleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String role,
      String url,
      String imageUrl,
      List<Staff>? voiceActors});
}

/// @nodoc
class __$CharacterRoleCopyWithImpl<$Res>
    extends _$CharacterRoleCopyWithImpl<$Res>
    implements _$CharacterRoleCopyWith<$Res> {
  __$CharacterRoleCopyWithImpl(
      _CharacterRole _value, $Res Function(_CharacterRole) _then)
      : super(_value, (v) => _then(v as _CharacterRole));

  @override
  _CharacterRole get _value => super._value as _CharacterRole;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? voiceActors = freezed,
  }) {
    return _then(_CharacterRole(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      voiceActors: voiceActors == freezed
          ? _value.voiceActors
          : voiceActors // ignore: cast_nullable_to_non_nullable
              as List<Staff>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterRole implements _CharacterRole {
  const _$_CharacterRole(
      {required this.id,
      required this.name,
      required this.role,
      required this.url,
      required this.imageUrl,
      this.voiceActors});

  factory _$_CharacterRole.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterRoleFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String role;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final List<Staff>? voiceActors;

  @override
  String toString() {
    return 'CharacterRole(id: $id, name: $name, role: $role, url: $url, imageUrl: $imageUrl, voiceActors: $voiceActors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharacterRole &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.voiceActors, voiceActors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(voiceActors));

  @JsonKey(ignore: true)
  @override
  _$CharacterRoleCopyWith<_CharacterRole> get copyWith =>
      __$CharacterRoleCopyWithImpl<_CharacterRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterRoleToJson(this);
  }
}

abstract class _CharacterRole implements CharacterRole {
  const factory _CharacterRole(
      {required int id,
      required String name,
      required String role,
      required String url,
      required String imageUrl,
      List<Staff>? voiceActors}) = _$_CharacterRole;

  factory _CharacterRole.fromJson(Map<String, dynamic> json) =
      _$_CharacterRole.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get role;
  @override
  String get url;
  @override
  String get imageUrl;
  @override
  List<Staff>? get voiceActors;
  @override
  @JsonKey(ignore: true)
  _$CharacterRoleCopyWith<_CharacterRole> get copyWith =>
      throw _privateConstructorUsedError;
}

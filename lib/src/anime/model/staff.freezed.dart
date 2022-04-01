// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return _Staff.fromJson(json);
}

/// @nodoc
class _$StaffTearOff {
  const _$StaffTearOff();

  _Staff call(
      {required String name,
      required int id,
      required String imageUrl,
      required String url,
      List<String>? positions}) {
    return _Staff(
      name: name,
      id: id,
      imageUrl: imageUrl,
      url: url,
      positions: positions,
    );
  }

  Staff fromJson(Map<String, Object?> json) {
    return Staff.fromJson(json);
  }
}

/// @nodoc
const $Staff = _$StaffTearOff();

/// @nodoc
mixin _$Staff {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<String>? get positions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int id,
      String imageUrl,
      String url,
      List<String>? positions});
}

/// @nodoc
class _$StaffCopyWithImpl<$Res> implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  final Staff _value;
  // ignore: unused_field
  final $Res Function(Staff) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? positions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      positions: positions == freezed
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$StaffCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$StaffCopyWith(_Staff value, $Res Function(_Staff) then) =
      __$StaffCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int id,
      String imageUrl,
      String url,
      List<String>? positions});
}

/// @nodoc
class __$StaffCopyWithImpl<$Res> extends _$StaffCopyWithImpl<$Res>
    implements _$StaffCopyWith<$Res> {
  __$StaffCopyWithImpl(_Staff _value, $Res Function(_Staff) _then)
      : super(_value, (v) => _then(v as _Staff));

  @override
  _Staff get _value => super._value as _Staff;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? positions = freezed,
  }) {
    return _then(_Staff(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      positions: positions == freezed
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Staff implements _Staff {
  const _$_Staff(
      {required this.name,
      required this.id,
      required this.imageUrl,
      required this.url,
      this.positions});

  factory _$_Staff.fromJson(Map<String, dynamic> json) =>
      _$$_StaffFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String url;
  @override
  final List<String>? positions;

  @override
  String toString() {
    return 'Staff(name: $name, id: $id, imageUrl: $imageUrl, url: $url, positions: $positions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Staff &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.positions, positions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(positions));

  @JsonKey(ignore: true)
  @override
  _$StaffCopyWith<_Staff> get copyWith =>
      __$StaffCopyWithImpl<_Staff>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffToJson(this);
  }
}

abstract class _Staff implements Staff {
  const factory _Staff(
      {required String name,
      required int id,
      required String imageUrl,
      required String url,
      List<String>? positions}) = _$_Staff;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$_Staff.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get url;
  @override
  List<String>? get positions;
  @override
  @JsonKey(ignore: true)
  _$StaffCopyWith<_Staff> get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generic_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenericInfo _$GenericInfoFromJson(Map<String, dynamic> json) {
  return _GenericInfo.fromJson(json);
}

/// @nodoc
class _$GenericInfoTearOff {
  const _$GenericInfoTearOff();

  _GenericInfo call(
      {required int id,
      String? imageUrl,
      required String name,
      String? type,
      required String url}) {
    return _GenericInfo(
      id: id,
      imageUrl: imageUrl,
      name: name,
      type: type,
      url: url,
    );
  }

  GenericInfo fromJson(Map<String, Object?> json) {
    return GenericInfo.fromJson(json);
  }
}

/// @nodoc
const $GenericInfo = _$GenericInfoTearOff();

/// @nodoc
mixin _$GenericInfo {
  int get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericInfoCopyWith<GenericInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericInfoCopyWith<$Res> {
  factory $GenericInfoCopyWith(
          GenericInfo value, $Res Function(GenericInfo) then) =
      _$GenericInfoCopyWithImpl<$Res>;
  $Res call({int id, String? imageUrl, String name, String? type, String url});
}

/// @nodoc
class _$GenericInfoCopyWithImpl<$Res> implements $GenericInfoCopyWith<$Res> {
  _$GenericInfoCopyWithImpl(this._value, this._then);

  final GenericInfo _value;
  // ignore: unused_field
  final $Res Function(GenericInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GenericInfoCopyWith<$Res>
    implements $GenericInfoCopyWith<$Res> {
  factory _$GenericInfoCopyWith(
          _GenericInfo value, $Res Function(_GenericInfo) then) =
      __$GenericInfoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? imageUrl, String name, String? type, String url});
}

/// @nodoc
class __$GenericInfoCopyWithImpl<$Res> extends _$GenericInfoCopyWithImpl<$Res>
    implements _$GenericInfoCopyWith<$Res> {
  __$GenericInfoCopyWithImpl(
      _GenericInfo _value, $Res Function(_GenericInfo) _then)
      : super(_value, (v) => _then(v as _GenericInfo));

  @override
  _GenericInfo get _value => super._value as _GenericInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_GenericInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenericInfo implements _GenericInfo {
  const _$_GenericInfo(
      {required this.id,
      this.imageUrl,
      required this.name,
      this.type,
      required this.url});

  factory _$_GenericInfo.fromJson(Map<String, dynamic> json) =>
      _$$_GenericInfoFromJson(json);

  @override
  final int id;
  @override
  final String? imageUrl;
  @override
  final String name;
  @override
  final String? type;
  @override
  final String url;

  @override
  String toString() {
    return 'GenericInfo(id: $id, imageUrl: $imageUrl, name: $name, type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$GenericInfoCopyWith<_GenericInfo> get copyWith =>
      __$GenericInfoCopyWithImpl<_GenericInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenericInfoToJson(this);
  }
}

abstract class _GenericInfo implements GenericInfo {
  const factory _GenericInfo(
      {required int id,
      String? imageUrl,
      required String name,
      String? type,
      required String url}) = _$_GenericInfo;

  factory _GenericInfo.fromJson(Map<String, dynamic> json) =
      _$_GenericInfo.fromJson;

  @override
  int get id;
  @override
  String? get imageUrl;
  @override
  String get name;
  @override
  String? get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$GenericInfoCopyWith<_GenericInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

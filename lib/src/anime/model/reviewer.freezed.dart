// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviewer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return _Reviewer.fromJson(json);
}

/// @nodoc
class _$ReviewerTearOff {
  const _$ReviewerTearOff();

  _Reviewer call(
      {required String username,
      required String imageUrl,
      required String url,
      required ReviewScore reviewScore}) {
    return _Reviewer(
      username: username,
      imageUrl: imageUrl,
      url: url,
      reviewScore: reviewScore,
    );
  }

  Reviewer fromJson(Map<String, Object?> json) {
    return Reviewer.fromJson(json);
  }
}

/// @nodoc
const $Reviewer = _$ReviewerTearOff();

/// @nodoc
mixin _$Reviewer {
  String get username => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  ReviewScore get reviewScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewerCopyWith<Reviewer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewerCopyWith<$Res> {
  factory $ReviewerCopyWith(Reviewer value, $Res Function(Reviewer) then) =
      _$ReviewerCopyWithImpl<$Res>;
  $Res call(
      {String username, String imageUrl, String url, ReviewScore reviewScore});

  $ReviewScoreCopyWith<$Res> get reviewScore;
}

/// @nodoc
class _$ReviewerCopyWithImpl<$Res> implements $ReviewerCopyWith<$Res> {
  _$ReviewerCopyWithImpl(this._value, this._then);

  final Reviewer _value;
  // ignore: unused_field
  final $Res Function(Reviewer) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? reviewScore = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      reviewScore: reviewScore == freezed
          ? _value.reviewScore
          : reviewScore // ignore: cast_nullable_to_non_nullable
              as ReviewScore,
    ));
  }

  @override
  $ReviewScoreCopyWith<$Res> get reviewScore {
    return $ReviewScoreCopyWith<$Res>(_value.reviewScore, (value) {
      return _then(_value.copyWith(reviewScore: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewerCopyWith<$Res> implements $ReviewerCopyWith<$Res> {
  factory _$ReviewerCopyWith(_Reviewer value, $Res Function(_Reviewer) then) =
      __$ReviewerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username, String imageUrl, String url, ReviewScore reviewScore});

  @override
  $ReviewScoreCopyWith<$Res> get reviewScore;
}

/// @nodoc
class __$ReviewerCopyWithImpl<$Res> extends _$ReviewerCopyWithImpl<$Res>
    implements _$ReviewerCopyWith<$Res> {
  __$ReviewerCopyWithImpl(_Reviewer _value, $Res Function(_Reviewer) _then)
      : super(_value, (v) => _then(v as _Reviewer));

  @override
  _Reviewer get _value => super._value as _Reviewer;

  @override
  $Res call({
    Object? username = freezed,
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? reviewScore = freezed,
  }) {
    return _then(_Reviewer(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      reviewScore: reviewScore == freezed
          ? _value.reviewScore
          : reviewScore // ignore: cast_nullable_to_non_nullable
              as ReviewScore,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reviewer implements _Reviewer {
  const _$_Reviewer(
      {required this.username,
      required this.imageUrl,
      required this.url,
      required this.reviewScore});

  factory _$_Reviewer.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewerFromJson(json);

  @override
  final String username;
  @override
  final String imageUrl;
  @override
  final String url;
  @override
  final ReviewScore reviewScore;

  @override
  String toString() {
    return 'Reviewer(username: $username, imageUrl: $imageUrl, url: $url, reviewScore: $reviewScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reviewer &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.reviewScore, reviewScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(reviewScore));

  @JsonKey(ignore: true)
  @override
  _$ReviewerCopyWith<_Reviewer> get copyWith =>
      __$ReviewerCopyWithImpl<_Reviewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewerToJson(this);
  }
}

abstract class _Reviewer implements Reviewer {
  const factory _Reviewer(
      {required String username,
      required String imageUrl,
      required String url,
      required ReviewScore reviewScore}) = _$_Reviewer;

  factory _Reviewer.fromJson(Map<String, dynamic> json) = _$_Reviewer.fromJson;

  @override
  String get username;
  @override
  String get imageUrl;
  @override
  String get url;
  @override
  ReviewScore get reviewScore;
  @override
  @JsonKey(ignore: true)
  _$ReviewerCopyWith<_Reviewer> get copyWith =>
      throw _privateConstructorUsedError;
}

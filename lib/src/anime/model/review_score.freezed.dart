// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewScore _$ReviewScoreFromJson(Map<String, dynamic> json) {
  return _ReviewScore.fromJson(json);
}

/// @nodoc
class _$ReviewScoreTearOff {
  const _$ReviewScoreTearOff();

  _ReviewScore call(
      {required int character,
      required int enjoyment,
      required int overall,
      required int story,
      int? sound,
      int? art,
      int? animation}) {
    return _ReviewScore(
      character: character,
      enjoyment: enjoyment,
      overall: overall,
      story: story,
      sound: sound,
      art: art,
      animation: animation,
    );
  }

  ReviewScore fromJson(Map<String, Object?> json) {
    return ReviewScore.fromJson(json);
  }
}

/// @nodoc
const $ReviewScore = _$ReviewScoreTearOff();

/// @nodoc
mixin _$ReviewScore {
  int get character => throw _privateConstructorUsedError;
  int get enjoyment => throw _privateConstructorUsedError;
  int get overall => throw _privateConstructorUsedError;
  int get story => throw _privateConstructorUsedError;
  int? get sound => throw _privateConstructorUsedError;
  int? get art => throw _privateConstructorUsedError;
  int? get animation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewScoreCopyWith<ReviewScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewScoreCopyWith<$Res> {
  factory $ReviewScoreCopyWith(
          ReviewScore value, $Res Function(ReviewScore) then) =
      _$ReviewScoreCopyWithImpl<$Res>;
  $Res call(
      {int character,
      int enjoyment,
      int overall,
      int story,
      int? sound,
      int? art,
      int? animation});
}

/// @nodoc
class _$ReviewScoreCopyWithImpl<$Res> implements $ReviewScoreCopyWith<$Res> {
  _$ReviewScoreCopyWithImpl(this._value, this._then);

  final ReviewScore _value;
  // ignore: unused_field
  final $Res Function(ReviewScore) _then;

  @override
  $Res call({
    Object? character = freezed,
    Object? enjoyment = freezed,
    Object? overall = freezed,
    Object? story = freezed,
    Object? sound = freezed,
    Object? art = freezed,
    Object? animation = freezed,
  }) {
    return _then(_value.copyWith(
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as int,
      enjoyment: enjoyment == freezed
          ? _value.enjoyment
          : enjoyment // ignore: cast_nullable_to_non_nullable
              as int,
      overall: overall == freezed
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as int,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as int,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as int?,
      art: art == freezed
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as int?,
      animation: animation == freezed
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ReviewScoreCopyWith<$Res>
    implements $ReviewScoreCopyWith<$Res> {
  factory _$ReviewScoreCopyWith(
          _ReviewScore value, $Res Function(_ReviewScore) then) =
      __$ReviewScoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {int character,
      int enjoyment,
      int overall,
      int story,
      int? sound,
      int? art,
      int? animation});
}

/// @nodoc
class __$ReviewScoreCopyWithImpl<$Res> extends _$ReviewScoreCopyWithImpl<$Res>
    implements _$ReviewScoreCopyWith<$Res> {
  __$ReviewScoreCopyWithImpl(
      _ReviewScore _value, $Res Function(_ReviewScore) _then)
      : super(_value, (v) => _then(v as _ReviewScore));

  @override
  _ReviewScore get _value => super._value as _ReviewScore;

  @override
  $Res call({
    Object? character = freezed,
    Object? enjoyment = freezed,
    Object? overall = freezed,
    Object? story = freezed,
    Object? sound = freezed,
    Object? art = freezed,
    Object? animation = freezed,
  }) {
    return _then(_ReviewScore(
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as int,
      enjoyment: enjoyment == freezed
          ? _value.enjoyment
          : enjoyment // ignore: cast_nullable_to_non_nullable
              as int,
      overall: overall == freezed
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as int,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as int,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as int?,
      art: art == freezed
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as int?,
      animation: animation == freezed
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewScore implements _ReviewScore {
  const _$_ReviewScore(
      {required this.character,
      required this.enjoyment,
      required this.overall,
      required this.story,
      this.sound,
      this.art,
      this.animation});

  factory _$_ReviewScore.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewScoreFromJson(json);

  @override
  final int character;
  @override
  final int enjoyment;
  @override
  final int overall;
  @override
  final int story;
  @override
  final int? sound;
  @override
  final int? art;
  @override
  final int? animation;

  @override
  String toString() {
    return 'ReviewScore(character: $character, enjoyment: $enjoyment, overall: $overall, story: $story, sound: $sound, art: $art, animation: $animation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewScore &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality().equals(other.enjoyment, enjoyment) &&
            const DeepCollectionEquality().equals(other.overall, overall) &&
            const DeepCollectionEquality().equals(other.story, story) &&
            const DeepCollectionEquality().equals(other.sound, sound) &&
            const DeepCollectionEquality().equals(other.art, art) &&
            const DeepCollectionEquality().equals(other.animation, animation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(enjoyment),
      const DeepCollectionEquality().hash(overall),
      const DeepCollectionEquality().hash(story),
      const DeepCollectionEquality().hash(sound),
      const DeepCollectionEquality().hash(art),
      const DeepCollectionEquality().hash(animation));

  @JsonKey(ignore: true)
  @override
  _$ReviewScoreCopyWith<_ReviewScore> get copyWith =>
      __$ReviewScoreCopyWithImpl<_ReviewScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewScoreToJson(this);
  }
}

abstract class _ReviewScore implements ReviewScore {
  const factory _ReviewScore(
      {required int character,
      required int enjoyment,
      required int overall,
      required int story,
      int? sound,
      int? art,
      int? animation}) = _$_ReviewScore;

  factory _ReviewScore.fromJson(Map<String, dynamic> json) =
      _$_ReviewScore.fromJson;

  @override
  int get character;
  @override
  int get enjoyment;
  @override
  int get overall;
  @override
  int get story;
  @override
  int? get sound;
  @override
  int? get art;
  @override
  int? get animation;
  @override
  @JsonKey(ignore: true)
  _$ReviewScoreCopyWith<_ReviewScore> get copyWith =>
      throw _privateConstructorUsedError;
}

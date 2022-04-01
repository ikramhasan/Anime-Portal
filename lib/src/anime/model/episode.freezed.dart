// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
class _$EpisodeTearOff {
  const _$EpisodeTearOff();

  _Episode call(
      {String? aired,
      required int id,
      required bool filler,
      String? forumUrl,
      required bool recap,
      required String title,
      String? titleJapanese,
      String? videoUrl}) {
    return _Episode(
      aired: aired,
      id: id,
      filler: filler,
      forumUrl: forumUrl,
      recap: recap,
      title: title,
      titleJapanese: titleJapanese,
      videoUrl: videoUrl,
    );
  }

  Episode fromJson(Map<String, Object?> json) {
    return Episode.fromJson(json);
  }
}

/// @nodoc
const $Episode = _$EpisodeTearOff();

/// @nodoc
mixin _$Episode {
  String? get aired => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get filler => throw _privateConstructorUsedError;
  String? get forumUrl => throw _privateConstructorUsedError;
  bool get recap => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get titleJapanese => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call(
      {String? aired,
      int id,
      bool filler,
      String? forumUrl,
      bool recap,
      String title,
      String? titleJapanese,
      String? videoUrl});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

  @override
  $Res call({
    Object? aired = freezed,
    Object? id = freezed,
    Object? filler = freezed,
    Object? forumUrl = freezed,
    Object? recap = freezed,
    Object? title = freezed,
    Object? titleJapanese = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      aired: aired == freezed
          ? _value.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filler: filler == freezed
          ? _value.filler
          : filler // ignore: cast_nullable_to_non_nullable
              as bool,
      forumUrl: forumUrl == freezed
          ? _value.forumUrl
          : forumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recap: recap == freezed
          ? _value.recap
          : recap // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleJapanese: titleJapanese == freezed
          ? _value.titleJapanese
          : titleJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) then) =
      __$EpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? aired,
      int id,
      bool filler,
      String? forumUrl,
      bool recap,
      String title,
      String? titleJapanese,
      String? videoUrl});
}

/// @nodoc
class __$EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(_Episode _value, $Res Function(_Episode) _then)
      : super(_value, (v) => _then(v as _Episode));

  @override
  _Episode get _value => super._value as _Episode;

  @override
  $Res call({
    Object? aired = freezed,
    Object? id = freezed,
    Object? filler = freezed,
    Object? forumUrl = freezed,
    Object? recap = freezed,
    Object? title = freezed,
    Object? titleJapanese = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_Episode(
      aired: aired == freezed
          ? _value.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filler: filler == freezed
          ? _value.filler
          : filler // ignore: cast_nullable_to_non_nullable
              as bool,
      forumUrl: forumUrl == freezed
          ? _value.forumUrl
          : forumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recap: recap == freezed
          ? _value.recap
          : recap // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleJapanese: titleJapanese == freezed
          ? _value.titleJapanese
          : titleJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episode implements _Episode {
  const _$_Episode(
      {this.aired,
      required this.id,
      required this.filler,
      this.forumUrl,
      required this.recap,
      required this.title,
      this.titleJapanese,
      this.videoUrl});

  factory _$_Episode.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeFromJson(json);

  @override
  final String? aired;
  @override
  final int id;
  @override
  final bool filler;
  @override
  final String? forumUrl;
  @override
  final bool recap;
  @override
  final String title;
  @override
  final String? titleJapanese;
  @override
  final String? videoUrl;

  @override
  String toString() {
    return 'Episode(aired: $aired, id: $id, filler: $filler, forumUrl: $forumUrl, recap: $recap, title: $title, titleJapanese: $titleJapanese, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Episode &&
            const DeepCollectionEquality().equals(other.aired, aired) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.filler, filler) &&
            const DeepCollectionEquality().equals(other.forumUrl, forumUrl) &&
            const DeepCollectionEquality().equals(other.recap, recap) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.titleJapanese, titleJapanese) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aired),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(filler),
      const DeepCollectionEquality().hash(forumUrl),
      const DeepCollectionEquality().hash(recap),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(titleJapanese),
      const DeepCollectionEquality().hash(videoUrl));

  @JsonKey(ignore: true)
  @override
  _$EpisodeCopyWith<_Episode> get copyWith =>
      __$EpisodeCopyWithImpl<_Episode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeToJson(this);
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {String? aired,
      required int id,
      required bool filler,
      String? forumUrl,
      required bool recap,
      required String title,
      String? titleJapanese,
      String? videoUrl}) = _$_Episode;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$_Episode.fromJson;

  @override
  String? get aired;
  @override
  int get id;
  @override
  bool get filler;
  @override
  String? get forumUrl;
  @override
  bool get recap;
  @override
  String get title;
  @override
  String? get titleJapanese;
  @override
  String? get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$EpisodeCopyWith<_Episode> get copyWith =>
      throw _privateConstructorUsedError;
}

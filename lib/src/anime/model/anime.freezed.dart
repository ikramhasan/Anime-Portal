// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Anime _$AnimeFromJson(Map<String, dynamic> json) {
  return _Anime.fromJson(json);
}

/// @nodoc
class _$AnimeTearOff {
  const _$AnimeTearOff();

  _Anime call(
      {required int id,
      bool airing = false,
      required Aired aired,
      String? background,
      String? broadcast,
      String? duration,
      List<String> endingThemes = const [],
      int? episodes,
      int? favorites,
      List<GenericInfo> genres = const [],
      List<GenericInfo> explicitGenres = const [],
      List<GenericInfo> demographics = const [],
      List<GenericInfo> licensors = const [],
      required String imageUrl,
      int? members,
      List<String> openingThemes = const [],
      int? popularity,
      String? premiered,
      int? rank,
      required List<GenericInfo> producers,
      String? rating,
      Related? related,
      double? score,
      int? scoredBy,
      String? source,
      String? status,
      List<GenericInfo> studios = const [],
      String? synopsis,
      required List<GenericInfo> themes,
      required String title,
      String? titleInEnglish,
      String? titleInJapanese,
      List<String> titleSynonyms = const [],
      String? trailerUrl,
      String? type,
      required String url}) {
    return _Anime(
      id: id,
      airing: airing,
      aired: aired,
      background: background,
      broadcast: broadcast,
      duration: duration,
      endingThemes: endingThemes,
      episodes: episodes,
      favorites: favorites,
      genres: genres,
      explicitGenres: explicitGenres,
      demographics: demographics,
      licensors: licensors,
      imageUrl: imageUrl,
      members: members,
      openingThemes: openingThemes,
      popularity: popularity,
      premiered: premiered,
      rank: rank,
      producers: producers,
      rating: rating,
      related: related,
      score: score,
      scoredBy: scoredBy,
      source: source,
      status: status,
      studios: studios,
      synopsis: synopsis,
      themes: themes,
      title: title,
      titleInEnglish: titleInEnglish,
      titleInJapanese: titleInJapanese,
      titleSynonyms: titleSynonyms,
      trailerUrl: trailerUrl,
      type: type,
      url: url,
    );
  }

  Anime fromJson(Map<String, Object?> json) {
    return Anime.fromJson(json);
  }
}

/// @nodoc
const $Anime = _$AnimeTearOff();

/// @nodoc
mixin _$Anime {
  int get id => throw _privateConstructorUsedError;
  bool get airing => throw _privateConstructorUsedError;
  Aired get aired => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;
  String? get broadcast => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  List<String> get endingThemes => throw _privateConstructorUsedError;
  int? get episodes => throw _privateConstructorUsedError;
  int? get favorites => throw _privateConstructorUsedError;
  List<GenericInfo> get genres => throw _privateConstructorUsedError;
  List<GenericInfo> get explicitGenres => throw _privateConstructorUsedError;
  List<GenericInfo> get demographics => throw _privateConstructorUsedError;
  List<GenericInfo> get licensors => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int? get members => throw _privateConstructorUsedError;
  List<String> get openingThemes => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get premiered => throw _privateConstructorUsedError;
  int? get rank => throw _privateConstructorUsedError;
  List<GenericInfo> get producers => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  Related? get related => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  int? get scoredBy => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<GenericInfo> get studios => throw _privateConstructorUsedError;
  String? get synopsis => throw _privateConstructorUsedError;
  List<GenericInfo> get themes => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get titleInEnglish => throw _privateConstructorUsedError;
  String? get titleInJapanese => throw _privateConstructorUsedError;
  List<String> get titleSynonyms => throw _privateConstructorUsedError;
  String? get trailerUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeCopyWith<Anime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeCopyWith<$Res> {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) then) =
      _$AnimeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      bool airing,
      Aired aired,
      String? background,
      String? broadcast,
      String? duration,
      List<String> endingThemes,
      int? episodes,
      int? favorites,
      List<GenericInfo> genres,
      List<GenericInfo> explicitGenres,
      List<GenericInfo> demographics,
      List<GenericInfo> licensors,
      String imageUrl,
      int? members,
      List<String> openingThemes,
      int? popularity,
      String? premiered,
      int? rank,
      List<GenericInfo> producers,
      String? rating,
      Related? related,
      double? score,
      int? scoredBy,
      String? source,
      String? status,
      List<GenericInfo> studios,
      String? synopsis,
      List<GenericInfo> themes,
      String title,
      String? titleInEnglish,
      String? titleInJapanese,
      List<String> titleSynonyms,
      String? trailerUrl,
      String? type,
      String url});

  $AiredCopyWith<$Res> get aired;
  $RelatedCopyWith<$Res>? get related;
}

/// @nodoc
class _$AnimeCopyWithImpl<$Res> implements $AnimeCopyWith<$Res> {
  _$AnimeCopyWithImpl(this._value, this._then);

  final Anime _value;
  // ignore: unused_field
  final $Res Function(Anime) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? airing = freezed,
    Object? aired = freezed,
    Object? background = freezed,
    Object? broadcast = freezed,
    Object? duration = freezed,
    Object? endingThemes = freezed,
    Object? episodes = freezed,
    Object? favorites = freezed,
    Object? genres = freezed,
    Object? explicitGenres = freezed,
    Object? demographics = freezed,
    Object? licensors = freezed,
    Object? imageUrl = freezed,
    Object? members = freezed,
    Object? openingThemes = freezed,
    Object? popularity = freezed,
    Object? premiered = freezed,
    Object? rank = freezed,
    Object? producers = freezed,
    Object? rating = freezed,
    Object? related = freezed,
    Object? score = freezed,
    Object? scoredBy = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? studios = freezed,
    Object? synopsis = freezed,
    Object? themes = freezed,
    Object? title = freezed,
    Object? titleInEnglish = freezed,
    Object? titleInJapanese = freezed,
    Object? titleSynonyms = freezed,
    Object? trailerUrl = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      airing: airing == freezed
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      aired: aired == freezed
          ? _value.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as Aired,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcast: broadcast == freezed
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      endingThemes: endingThemes == freezed
          ? _value.endingThemes
          : endingThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      explicitGenres: explicitGenres == freezed
          ? _value.explicitGenres
          : explicitGenres // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      demographics: demographics == freezed
          ? _value.demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      licensors: licensors == freezed
          ? _value.licensors
          : licensors // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
      openingThemes: openingThemes == freezed
          ? _value.openingThemes
          : openingThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      premiered: premiered == freezed
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      producers: producers == freezed
          ? _value.producers
          : producers // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      related: related == freezed
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as Related?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      scoredBy: scoredBy == freezed
          ? _value.scoredBy
          : scoredBy // ignore: cast_nullable_to_non_nullable
              as int?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      studios: studios == freezed
          ? _value.studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: themes == freezed
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleInEnglish: titleInEnglish == freezed
          ? _value.titleInEnglish
          : titleInEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleInJapanese: titleInJapanese == freezed
          ? _value.titleInJapanese
          : titleInJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      titleSynonyms: titleSynonyms == freezed
          ? _value.titleSynonyms
          : titleSynonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trailerUrl: trailerUrl == freezed
          ? _value.trailerUrl
          : trailerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  $AiredCopyWith<$Res> get aired {
    return $AiredCopyWith<$Res>(_value.aired, (value) {
      return _then(_value.copyWith(aired: value));
    });
  }

  @override
  $RelatedCopyWith<$Res>? get related {
    if (_value.related == null) {
      return null;
    }

    return $RelatedCopyWith<$Res>(_value.related!, (value) {
      return _then(_value.copyWith(related: value));
    });
  }
}

/// @nodoc
abstract class _$AnimeCopyWith<$Res> implements $AnimeCopyWith<$Res> {
  factory _$AnimeCopyWith(_Anime value, $Res Function(_Anime) then) =
      __$AnimeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      bool airing,
      Aired aired,
      String? background,
      String? broadcast,
      String? duration,
      List<String> endingThemes,
      int? episodes,
      int? favorites,
      List<GenericInfo> genres,
      List<GenericInfo> explicitGenres,
      List<GenericInfo> demographics,
      List<GenericInfo> licensors,
      String imageUrl,
      int? members,
      List<String> openingThemes,
      int? popularity,
      String? premiered,
      int? rank,
      List<GenericInfo> producers,
      String? rating,
      Related? related,
      double? score,
      int? scoredBy,
      String? source,
      String? status,
      List<GenericInfo> studios,
      String? synopsis,
      List<GenericInfo> themes,
      String title,
      String? titleInEnglish,
      String? titleInJapanese,
      List<String> titleSynonyms,
      String? trailerUrl,
      String? type,
      String url});

  @override
  $AiredCopyWith<$Res> get aired;
  @override
  $RelatedCopyWith<$Res>? get related;
}

/// @nodoc
class __$AnimeCopyWithImpl<$Res> extends _$AnimeCopyWithImpl<$Res>
    implements _$AnimeCopyWith<$Res> {
  __$AnimeCopyWithImpl(_Anime _value, $Res Function(_Anime) _then)
      : super(_value, (v) => _then(v as _Anime));

  @override
  _Anime get _value => super._value as _Anime;

  @override
  $Res call({
    Object? id = freezed,
    Object? airing = freezed,
    Object? aired = freezed,
    Object? background = freezed,
    Object? broadcast = freezed,
    Object? duration = freezed,
    Object? endingThemes = freezed,
    Object? episodes = freezed,
    Object? favorites = freezed,
    Object? genres = freezed,
    Object? explicitGenres = freezed,
    Object? demographics = freezed,
    Object? licensors = freezed,
    Object? imageUrl = freezed,
    Object? members = freezed,
    Object? openingThemes = freezed,
    Object? popularity = freezed,
    Object? premiered = freezed,
    Object? rank = freezed,
    Object? producers = freezed,
    Object? rating = freezed,
    Object? related = freezed,
    Object? score = freezed,
    Object? scoredBy = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? studios = freezed,
    Object? synopsis = freezed,
    Object? themes = freezed,
    Object? title = freezed,
    Object? titleInEnglish = freezed,
    Object? titleInJapanese = freezed,
    Object? titleSynonyms = freezed,
    Object? trailerUrl = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_Anime(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      airing: airing == freezed
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      aired: aired == freezed
          ? _value.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as Aired,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcast: broadcast == freezed
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      endingThemes: endingThemes == freezed
          ? _value.endingThemes
          : endingThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      explicitGenres: explicitGenres == freezed
          ? _value.explicitGenres
          : explicitGenres // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      demographics: demographics == freezed
          ? _value.demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      licensors: licensors == freezed
          ? _value.licensors
          : licensors // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
      openingThemes: openingThemes == freezed
          ? _value.openingThemes
          : openingThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      premiered: premiered == freezed
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      producers: producers == freezed
          ? _value.producers
          : producers // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      related: related == freezed
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as Related?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      scoredBy: scoredBy == freezed
          ? _value.scoredBy
          : scoredBy // ignore: cast_nullable_to_non_nullable
              as int?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      studios: studios == freezed
          ? _value.studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: themes == freezed
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleInEnglish: titleInEnglish == freezed
          ? _value.titleInEnglish
          : titleInEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleInJapanese: titleInJapanese == freezed
          ? _value.titleInJapanese
          : titleInJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      titleSynonyms: titleSynonyms == freezed
          ? _value.titleSynonyms
          : titleSynonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trailerUrl: trailerUrl == freezed
          ? _value.trailerUrl
          : trailerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Anime implements _Anime {
  const _$_Anime(
      {required this.id,
      this.airing = false,
      required this.aired,
      this.background,
      this.broadcast,
      this.duration,
      this.endingThemes = const [],
      this.episodes,
      this.favorites,
      this.genres = const [],
      this.explicitGenres = const [],
      this.demographics = const [],
      this.licensors = const [],
      required this.imageUrl,
      this.members,
      this.openingThemes = const [],
      this.popularity,
      this.premiered,
      this.rank,
      required this.producers,
      this.rating,
      this.related,
      this.score,
      this.scoredBy,
      this.source,
      this.status,
      this.studios = const [],
      this.synopsis,
      required this.themes,
      required this.title,
      this.titleInEnglish,
      this.titleInJapanese,
      this.titleSynonyms = const [],
      this.trailerUrl,
      this.type,
      required this.url});

  factory _$_Anime.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final bool airing;
  @override
  final Aired aired;
  @override
  final String? background;
  @override
  final String? broadcast;
  @override
  final String? duration;
  @JsonKey()
  @override
  final List<String> endingThemes;
  @override
  final int? episodes;
  @override
  final int? favorites;
  @JsonKey()
  @override
  final List<GenericInfo> genres;
  @JsonKey()
  @override
  final List<GenericInfo> explicitGenres;
  @JsonKey()
  @override
  final List<GenericInfo> demographics;
  @JsonKey()
  @override
  final List<GenericInfo> licensors;
  @override
  final String imageUrl;
  @override
  final int? members;
  @JsonKey()
  @override
  final List<String> openingThemes;
  @override
  final int? popularity;
  @override
  final String? premiered;
  @override
  final int? rank;
  @override
  final List<GenericInfo> producers;
  @override
  final String? rating;
  @override
  final Related? related;
  @override
  final double? score;
  @override
  final int? scoredBy;
  @override
  final String? source;
  @override
  final String? status;
  @JsonKey()
  @override
  final List<GenericInfo> studios;
  @override
  final String? synopsis;
  @override
  final List<GenericInfo> themes;
  @override
  final String title;
  @override
  final String? titleInEnglish;
  @override
  final String? titleInJapanese;
  @JsonKey()
  @override
  final List<String> titleSynonyms;
  @override
  final String? trailerUrl;
  @override
  final String? type;
  @override
  final String url;

  @override
  String toString() {
    return 'Anime(id: $id, airing: $airing, aired: $aired, background: $background, broadcast: $broadcast, duration: $duration, endingThemes: $endingThemes, episodes: $episodes, favorites: $favorites, genres: $genres, explicitGenres: $explicitGenres, demographics: $demographics, licensors: $licensors, imageUrl: $imageUrl, members: $members, openingThemes: $openingThemes, popularity: $popularity, premiered: $premiered, rank: $rank, producers: $producers, rating: $rating, related: $related, score: $score, scoredBy: $scoredBy, source: $source, status: $status, studios: $studios, synopsis: $synopsis, themes: $themes, title: $title, titleInEnglish: $titleInEnglish, titleInJapanese: $titleInJapanese, titleSynonyms: $titleSynonyms, trailerUrl: $trailerUrl, type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Anime &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.airing, airing) &&
            const DeepCollectionEquality().equals(other.aired, aired) &&
            const DeepCollectionEquality()
                .equals(other.background, background) &&
            const DeepCollectionEquality().equals(other.broadcast, broadcast) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.endingThemes, endingThemes) &&
            const DeepCollectionEquality().equals(other.episodes, episodes) &&
            const DeepCollectionEquality().equals(other.favorites, favorites) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality()
                .equals(other.explicitGenres, explicitGenres) &&
            const DeepCollectionEquality()
                .equals(other.demographics, demographics) &&
            const DeepCollectionEquality().equals(other.licensors, licensors) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality()
                .equals(other.openingThemes, openingThemes) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.premiered, premiered) &&
            const DeepCollectionEquality().equals(other.rank, rank) &&
            const DeepCollectionEquality().equals(other.producers, producers) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.related, related) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.scoredBy, scoredBy) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.studios, studios) &&
            const DeepCollectionEquality().equals(other.synopsis, synopsis) &&
            const DeepCollectionEquality().equals(other.themes, themes) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.titleInEnglish, titleInEnglish) &&
            const DeepCollectionEquality()
                .equals(other.titleInJapanese, titleInJapanese) &&
            const DeepCollectionEquality()
                .equals(other.titleSynonyms, titleSynonyms) &&
            const DeepCollectionEquality()
                .equals(other.trailerUrl, trailerUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(airing),
        const DeepCollectionEquality().hash(aired),
        const DeepCollectionEquality().hash(background),
        const DeepCollectionEquality().hash(broadcast),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(endingThemes),
        const DeepCollectionEquality().hash(episodes),
        const DeepCollectionEquality().hash(favorites),
        const DeepCollectionEquality().hash(genres),
        const DeepCollectionEquality().hash(explicitGenres),
        const DeepCollectionEquality().hash(demographics),
        const DeepCollectionEquality().hash(licensors),
        const DeepCollectionEquality().hash(imageUrl),
        const DeepCollectionEquality().hash(members),
        const DeepCollectionEquality().hash(openingThemes),
        const DeepCollectionEquality().hash(popularity),
        const DeepCollectionEquality().hash(premiered),
        const DeepCollectionEquality().hash(rank),
        const DeepCollectionEquality().hash(producers),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(related),
        const DeepCollectionEquality().hash(score),
        const DeepCollectionEquality().hash(scoredBy),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(studios),
        const DeepCollectionEquality().hash(synopsis),
        const DeepCollectionEquality().hash(themes),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(titleInEnglish),
        const DeepCollectionEquality().hash(titleInJapanese),
        const DeepCollectionEquality().hash(titleSynonyms),
        const DeepCollectionEquality().hash(trailerUrl),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(url)
      ]);

  @JsonKey(ignore: true)
  @override
  _$AnimeCopyWith<_Anime> get copyWith =>
      __$AnimeCopyWithImpl<_Anime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeToJson(this);
  }
}

abstract class _Anime implements Anime {
  const factory _Anime(
      {required int id,
      bool airing,
      required Aired aired,
      String? background,
      String? broadcast,
      String? duration,
      List<String> endingThemes,
      int? episodes,
      int? favorites,
      List<GenericInfo> genres,
      List<GenericInfo> explicitGenres,
      List<GenericInfo> demographics,
      List<GenericInfo> licensors,
      required String imageUrl,
      int? members,
      List<String> openingThemes,
      int? popularity,
      String? premiered,
      int? rank,
      required List<GenericInfo> producers,
      String? rating,
      Related? related,
      double? score,
      int? scoredBy,
      String? source,
      String? status,
      List<GenericInfo> studios,
      String? synopsis,
      required List<GenericInfo> themes,
      required String title,
      String? titleInEnglish,
      String? titleInJapanese,
      List<String> titleSynonyms,
      String? trailerUrl,
      String? type,
      required String url}) = _$_Anime;

  factory _Anime.fromJson(Map<String, dynamic> json) = _$_Anime.fromJson;

  @override
  int get id;
  @override
  bool get airing;
  @override
  Aired get aired;
  @override
  String? get background;
  @override
  String? get broadcast;
  @override
  String? get duration;
  @override
  List<String> get endingThemes;
  @override
  int? get episodes;
  @override
  int? get favorites;
  @override
  List<GenericInfo> get genres;
  @override
  List<GenericInfo> get explicitGenres;
  @override
  List<GenericInfo> get demographics;
  @override
  List<GenericInfo> get licensors;
  @override
  String get imageUrl;
  @override
  int? get members;
  @override
  List<String> get openingThemes;
  @override
  int? get popularity;
  @override
  String? get premiered;
  @override
  int? get rank;
  @override
  List<GenericInfo> get producers;
  @override
  String? get rating;
  @override
  Related? get related;
  @override
  double? get score;
  @override
  int? get scoredBy;
  @override
  String? get source;
  @override
  String? get status;
  @override
  List<GenericInfo> get studios;
  @override
  String? get synopsis;
  @override
  List<GenericInfo> get themes;
  @override
  String get title;
  @override
  String? get titleInEnglish;
  @override
  String? get titleInJapanese;
  @override
  List<String> get titleSynonyms;
  @override
  String? get trailerUrl;
  @override
  String? get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$AnimeCopyWith<_Anime> get copyWith => throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Anime _$$_AnimeFromJson(Map<String, dynamic> json) => _$_Anime(
      id: json['id'] as int,
      airing: json['airing'] as bool? ?? false,
      aired: Aired.fromJson(json['aired'] as Map<String, dynamic>),
      background: json['background'] as String?,
      broadcast: json['broadcast'] as String?,
      duration: json['duration'] as String?,
      endingThemes: (json['endingThemes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      episodes: json['episodes'] as int?,
      favorites: json['favorites'] as int?,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      explicitGenres: (json['explicitGenres'] as List<dynamic>?)
              ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      demographics: (json['demographics'] as List<dynamic>?)
              ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      licensors: (json['licensors'] as List<dynamic>?)
              ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imageUrl: json['imageUrl'] as String,
      members: json['members'] as int?,
      openingThemes: (json['openingThemes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      popularity: json['popularity'] as int?,
      premiered: json['premiered'] as String?,
      rank: json['rank'] as int?,
      producers: (json['producers'] as List<dynamic>)
          .map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] as String?,
      related: json['related'] == null
          ? null
          : Related.fromJson(json['related'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toDouble(),
      scoredBy: json['scoredBy'] as int?,
      source: json['source'] as String?,
      status: json['status'] as String?,
      studios: (json['studios'] as List<dynamic>?)
              ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      synopsis: json['synopsis'] as String?,
      themes: (json['themes'] as List<dynamic>)
          .map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      titleInEnglish: json['titleInEnglish'] as String?,
      titleInJapanese: json['titleInJapanese'] as String?,
      titleSynonyms: (json['titleSynonyms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      trailerUrl: json['trailerUrl'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_AnimeToJson(_$_Anime instance) => <String, dynamic>{
      'id': instance.id,
      'airing': instance.airing,
      'aired': instance.aired,
      'background': instance.background,
      'broadcast': instance.broadcast,
      'duration': instance.duration,
      'endingThemes': instance.endingThemes,
      'episodes': instance.episodes,
      'favorites': instance.favorites,
      'genres': instance.genres,
      'explicitGenres': instance.explicitGenres,
      'demographics': instance.demographics,
      'licensors': instance.licensors,
      'imageUrl': instance.imageUrl,
      'members': instance.members,
      'openingThemes': instance.openingThemes,
      'popularity': instance.popularity,
      'premiered': instance.premiered,
      'rank': instance.rank,
      'producers': instance.producers,
      'rating': instance.rating,
      'related': instance.related,
      'score': instance.score,
      'scoredBy': instance.scoredBy,
      'source': instance.source,
      'status': instance.status,
      'studios': instance.studios,
      'synopsis': instance.synopsis,
      'themes': instance.themes,
      'title': instance.title,
      'titleInEnglish': instance.titleInEnglish,
      'titleInJapanese': instance.titleInJapanese,
      'titleSynonyms': instance.titleSynonyms,
      'trailerUrl': instance.trailerUrl,
      'type': instance.type,
      'url': instance.url,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Episode _$$_EpisodeFromJson(Map<String, dynamic> json) => _$_Episode(
      aired: json['aired'] as String?,
      id: json['id'] as int,
      filler: json['filler'] as bool,
      forumUrl: json['forumUrl'] as String?,
      recap: json['recap'] as bool,
      title: json['title'] as String,
      titleJapanese: json['titleJapanese'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );

Map<String, dynamic> _$$_EpisodeToJson(_$_Episode instance) =>
    <String, dynamic>{
      'aired': instance.aired,
      'id': instance.id,
      'filler': instance.filler,
      'forumUrl': instance.forumUrl,
      'recap': instance.recap,
      'title': instance.title,
      'titleJapanese': instance.titleJapanese,
      'videoUrl': instance.videoUrl,
    };

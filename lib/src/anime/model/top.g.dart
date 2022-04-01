// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Top _$$_TopFromJson(Map<String, dynamic> json) => _$_Top(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      endDate: json['endDate'] as String?,
      episodes: json['episodes'] as int?,
      favorites: json['favorites'] as int?,
      imageUrl: json['imageUrl'] as String,
      members: json['members'] as int?,
      rank: json['rank'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      startDate: json['startDate'] as String?,
      type: json['type'] as String?,
      volumes: json['volumes'] as int?,
    );

Map<String, dynamic> _$$_TopToJson(_$_Top instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'endDate': instance.endDate,
      'episodes': instance.episodes,
      'favorites': instance.favorites,
      'imageUrl': instance.imageUrl,
      'members': instance.members,
      'rank': instance.rank,
      'score': instance.score,
      'startDate': instance.startDate,
      'type': instance.type,
      'volumes': instance.volumes,
    };

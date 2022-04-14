// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewScore _$$_ReviewScoreFromJson(Map<String, dynamic> json) =>
    _$_ReviewScore(
      character: json['character'] as int,
      enjoyment: json['enjoyment'] as int,
      overall: json['overall'] as int,
      story: json['story'] as int,
      sound: json['sound'] as int?,
      art: json['art'] as int?,
      animation: json['animation'] as int?,
    );

Map<String, dynamic> _$$_ReviewScoreToJson(_$_ReviewScore instance) =>
    <String, dynamic>{
      'character': instance.character,
      'enjoyment': instance.enjoyment,
      'overall': instance.overall,
      'story': instance.story,
      'sound': instance.sound,
      'art': instance.art,
      'animation': instance.animation,
    };

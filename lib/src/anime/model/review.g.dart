// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      content: json['content'] as String,
      date: json['date'] as String,
      helpfulCount: json['helpfulCount'] as int,
      id: json['id'] as int,
      reviewer: Reviewer.fromJson(json['reviewer'] as Map<String, dynamic>),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'content': instance.content,
      'date': instance.date,
      'helpfulCount': instance.helpfulCount,
      'id': instance.id,
      'reviewer': instance.reviewer,
      'url': instance.url,
    };

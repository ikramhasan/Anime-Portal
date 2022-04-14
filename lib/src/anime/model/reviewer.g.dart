// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reviewer _$$_ReviewerFromJson(Map<String, dynamic> json) => _$_Reviewer(
      username: json['username'] as String,
      imageUrl: json['imageUrl'] as String,
      url: json['url'] as String,
      reviewScore:
          ReviewScore.fromJson(json['reviewScore'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewerToJson(_$_Reviewer instance) =>
    <String, dynamic>{
      'username': instance.username,
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'reviewScore': instance.reviewScore,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Related _$$_RelatedFromJson(Map<String, dynamic> json) => _$_Related(
      adaptation: (json['adaptation'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternativeSetting: (json['alternativeSetting'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternativeVersion: (json['alternativeVersion'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullStory: (json['fullStory'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      other: (json['other'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentStory: (json['parentStory'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      prequel: (json['prequel'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequel: (json['sequel'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      sideStory: (json['sideStory'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      spinOff: (json['spinOff'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: (json['summary'] as List<dynamic>?)
          ?.map((e) => GenericInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RelatedToJson(_$_Related instance) =>
    <String, dynamic>{
      'adaptation': instance.adaptation,
      'alternativeSetting': instance.alternativeSetting,
      'alternativeVersion': instance.alternativeVersion,
      'characters': instance.characters,
      'fullStory': instance.fullStory,
      'other': instance.other,
      'parentStory': instance.parentStory,
      'prequel': instance.prequel,
      'sequel': instance.sequel,
      'sideStory': instance.sideStory,
      'spinOff': instance.spinOff,
      'summary': instance.summary,
    };

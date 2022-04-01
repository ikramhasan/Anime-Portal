// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenericInfo _$$_GenericInfoFromJson(Map<String, dynamic> json) =>
    _$_GenericInfo(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String,
      type: json['type'] as String?,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_GenericInfoToJson(_$_GenericInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'type': instance.type,
      'url': instance.url,
    };

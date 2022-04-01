// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterRole _$$_CharacterRoleFromJson(Map<String, dynamic> json) =>
    _$_CharacterRole(
      id: json['id'] as int,
      name: json['name'] as String,
      role: json['role'] as String,
      url: json['url'] as String,
      imageUrl: json['imageUrl'] as String,
      voiceActors: (json['voiceActors'] as List<dynamic>?)
          ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterRoleToJson(_$_CharacterRole instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'voiceActors': instance.voiceActors,
    };

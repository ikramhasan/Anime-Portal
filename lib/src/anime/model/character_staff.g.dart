// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterStaff _$$_CharacterStaffFromJson(Map<String, dynamic> json) =>
    _$_CharacterStaff(
      characters: (json['characters'] as List<dynamic>)
          .map((e) => CharacterRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      staff: (json['staff'] as List<dynamic>)
          .map((e) => Staff.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterStaffToJson(_$_CharacterStaff instance) =>
    <String, dynamic>{
      'characters': instance.characters,
      'staff': instance.staff,
    };

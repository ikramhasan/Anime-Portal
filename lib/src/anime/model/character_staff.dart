import 'package:anime_portal/src/anime/model/character_role.dart';
import 'package:anime_portal/src/anime/model/staff.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_staff.freezed.dart';
part 'character_staff.g.dart';

@freezed
class CharacterStaff with _$CharacterStaff {
  const factory CharacterStaff({
    required List<CharacterRole> characters,
    required List<Staff> staff,
  }) = _CharacterStaff;

  factory CharacterStaff.fromJson(Map<String, dynamic> json) =>
      _$CharacterStaffFromJson(json);

  factory CharacterStaff.empty() => const _CharacterStaff(
        characters: [],
        staff: [],
      );
}

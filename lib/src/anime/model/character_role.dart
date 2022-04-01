import 'package:anime_portal/src/anime/model/staff.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_role.freezed.dart';
part 'character_role.g.dart';

@freezed
class CharacterRole with _$CharacterRole {
  const factory CharacterRole({
    required int id,
    required String name,
    required String role,
    required String url,
    required String imageUrl,
    List<Staff>? voiceActors,
  }) = _CharacterRole;

  factory CharacterRole.fromJson(Map<String, dynamic> json) =>
      _$CharacterRoleFromJson(json);

  factory CharacterRole.empty() => const _CharacterRole(
        id: 0,
        imageUrl: '',
        name: '',
        role: '',
        url: '',
        voiceActors: [],
      );
}

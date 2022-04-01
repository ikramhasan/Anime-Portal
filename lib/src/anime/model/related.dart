import 'package:anime_portal/src/anime/model/generic_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'related.freezed.dart';
part 'related.g.dart';

@freezed
class Related with _$Related {
  const factory Related({
    List<GenericInfo>? adaptation,
    List<GenericInfo>? alternativeSetting,
    List<GenericInfo>? alternativeVersion,
    List<GenericInfo>? characters,
    List<GenericInfo>? fullStory,
    List<GenericInfo>? other,
    List<GenericInfo>? parentStory,
    List<GenericInfo>? prequel,
    List<GenericInfo>? sequel,
    List<GenericInfo>? sideStory,
    List<GenericInfo>? spinOff,
    List<GenericInfo>? summary,
  }) = _Related;

  factory Related.fromJson(Map<String, dynamic> json) =>
      _$RelatedFromJson(json);

  factory Related.empty() => const _Related();
}

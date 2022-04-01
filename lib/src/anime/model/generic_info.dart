import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_info.freezed.dart';
part 'generic_info.g.dart';

@freezed
class GenericInfo with _$GenericInfo {
  const factory GenericInfo({
    required int id,
    String? imageUrl,
    required String name,
    String? type,
    required String url,
  }) = _GenericInfo;

  factory GenericInfo.fromJson(Map<String, dynamic> json) =>
      _$GenericInfoFromJson(json);

  factory GenericInfo.empty() => const _GenericInfo(
        id: 0,
        name: '',
        url: '',
      );
}

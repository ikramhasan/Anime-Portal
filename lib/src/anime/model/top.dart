import 'package:freezed_annotation/freezed_annotation.dart';

part 'top.freezed.dart';
part 'top.g.dart';

@freezed
class Top with _$Top {
  const factory Top({
    required int id,
    required String title,
    required String url,
    String? endDate,
    int? episodes,
    int? favorites,
    required String imageUrl,
    int? members,
    int? rank,
    double? score,
    String? startDate,
    String? type,
    int? volumes,
  }) = _Top;

  factory Top.fromJson(Map<String, dynamic> json) => _$TopFromJson(json);

  factory Top.empty() => const _Top(
        id: 0,
        imageUrl: '',
        rank: 0,
        title: '',
        url: '',
      );
}

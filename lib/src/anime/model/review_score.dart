import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_score.freezed.dart';
part 'review_score.g.dart';

@freezed
class ReviewScore with _$ReviewScore {
  const factory ReviewScore({
    required int character,
    required int enjoyment,
    required int overall,
    required int story,
    int? sound,
    int? art,
    int? animation,
  }) = _ReviewScore;

  factory ReviewScore.fromJson(Map<String, dynamic> json) =>
      _$ReviewScoreFromJson(json);

  factory ReviewScore.empty() => const _ReviewScore(
    character: 0,
    enjoyment: 0,
    overall: 0,
    story: 0,
  );
}

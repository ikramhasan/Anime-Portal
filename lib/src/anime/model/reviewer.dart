import 'package:anime_portal/src/anime/model/review_score.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviewer.freezed.dart';
part 'reviewer.g.dart';

@freezed
class Reviewer with _$Reviewer {
  const factory Reviewer({
    required String username,
    required String imageUrl,
    required String url,
    required ReviewScore reviewScore,
  }) = _Reviewer;

  factory Reviewer.fromJson(Map<String, dynamic> json) =>
      _$ReviewerFromJson(json);

  factory Reviewer.empty() => _Reviewer(
        imageUrl: '',
        url: '',
        username: '',
        reviewScore: ReviewScore.empty(),
      );
}

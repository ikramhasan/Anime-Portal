import 'package:anime_portal/src/anime/model/reviewer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String content,
    required String date,
    required int helpfulCount,
    required int id,
    required Reviewer reviewer,
    required String url,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  factory Review.empty() => _Review(
        content: '',
        date: '',
        helpfulCount: 0,
        id: 0,
        url: '',
        reviewer: Reviewer.empty(),
      );
}

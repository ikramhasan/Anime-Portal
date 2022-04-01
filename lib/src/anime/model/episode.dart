import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    String? aired,
    required int id,
    required bool filler,
    String? forumUrl,
    required bool recap,
    required String title,
    String? titleJapanese,
    String? videoUrl,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);

  factory Episode.empty() => const _Episode(
        filler: false,
        id: 0,
        recap: false,
        title: '',
      );
}

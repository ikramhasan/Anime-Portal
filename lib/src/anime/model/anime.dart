import 'package:anime_portal/src/anime/model/aired.dart';
import 'package:anime_portal/src/anime/model/generic_info.dart';
import 'package:anime_portal/src/anime/model/related.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';
part 'anime.g.dart';

@freezed
class Anime with _$Anime {
  const factory Anime({
    required int id,
    @Default(false) bool airing,
    required Aired aired,
    String? background,
    String? broadcast,
    String? duration,
    @Default([]) List<String> endingThemes,
    int? episodes,
    int? favorites,
    @Default([]) List<GenericInfo> genres,
    @Default([]) List<GenericInfo> explicitGenres,
    @Default([]) List<GenericInfo> demographics,
    @Default([]) List<GenericInfo> licensors,
    required String imageUrl,
    int? members,
    @Default([]) List<String> openingThemes,
    int? popularity,
    String? premiered,
    int? rank,
    required List<GenericInfo> producers,
    String? rating,
    Related? related,
    double? score,
    int? scoredBy,
    String? source,
    String? status,
    @Default([]) List<GenericInfo> studios,
    String? synopsis,
    required List<GenericInfo> themes,
    required String title,
    String? titleInEnglish,
    String? titleInJapanese,
    @Default([]) List<String> titleSynonyms,
    String? trailerUrl,
    String? type,
    required String url,
  }) = _Anime;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  factory Anime.empty() => _Anime(
        id: 0,
        title: '',
        airing: false,
        aired: Aired.empty(),
        demographics: [],
        endingThemes: [],
        explicitGenres: [],
        genres: [],
        imageUrl: '',
        licensors: [],
        openingThemes: [],
        producers: [],
        related: Related.empty(),
        studios: [],
        themes: [],
        titleSynonyms: [],
        url: '',
      );
}

part of 'top_anime_cubit.dart';

@freezed
class TopAnimeState with _$TopAnimeState {
  const factory TopAnimeState({
    // Trending Anime
    required bool trendingAnimeLoading,
    required IList<Top> trendingAnimeList,
    required Failure trendingAnimeFailure,
    // Top Anime
    required bool topAnimeLoading,
    required IList<Top> topAnimeList,
    required Failure topAnimeFailure,

    // Trending Manga
    required bool trendingMangaLoading,
    required IList<Top> trendingMangaList,
    required Failure trendingMangaFailure,
  }) = _TopAnimeState;

  factory TopAnimeState.initial() => TopAnimeState(
        trendingAnimeLoading: false,
        trendingAnimeFailure: Failure.none(),
        trendingAnimeList: IList(),

        topAnimeLoading: false,
        topAnimeFailure: Failure.none(),
        topAnimeList: IList(),

        trendingMangaLoading: false,
        trendingMangaFailure: Failure.none(),
        trendingMangaList: IList(),
      );
}

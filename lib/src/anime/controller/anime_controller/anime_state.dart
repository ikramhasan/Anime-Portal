part of 'anime_cubit.dart';

@freezed
class AnimeState with _$AnimeState {
  const factory AnimeState({
    // Anime
    required bool loading,
    required Anime anime,
    required Failure failure,

    // Character Staff
    required bool characterStaffLoading,
    required CharacterStaff characterStaff,
    required Failure characterStaffFailure,

    // Episodes
    required bool episodeLoading,
    required List<Episode> episodes,
    required Failure episodeFailure,

    // Pictures
    required bool picturesLoading,
    required List<Picture> pictures,
    required Failure picturesFailure,

    // Recommendations
    required bool recommendationsLoading,
    required List<Top> recommendations,
    required Failure recommendationsFailure,

    // Recommendations
    required bool reviewsLoading,
    required List<Review> reviews,
    required Failure reviewsFailure,

    // Search
    required bool searchLoading,
    required List<Top> searchResult,
    required Failure searchFailure,
  }) = _AnimeState;

  factory AnimeState.initial() => AnimeState(
        loading: false,
        failure: Failure.none(),
        anime: Anime.empty(),
        characterStaffLoading: false,
        characterStaff: CharacterStaff.empty(),
        characterStaffFailure: Failure.none(),
        episodeLoading: false,
        episodeFailure: Failure.none(),
        episodes: [],
        picturesLoading: false,
        picturesFailure: Failure.none(),
        pictures: [],
        recommendations: [],
        recommendationsFailure: Failure.none(),
        recommendationsLoading: false,
        reviews: [],
        reviewsFailure: Failure.none(),
        reviewsLoading: false,
        searchResult: [],
        searchFailure: Failure.none(),
        searchLoading: false,
      );
}

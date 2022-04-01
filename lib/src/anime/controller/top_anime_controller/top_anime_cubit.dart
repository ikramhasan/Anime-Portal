import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/anime/repository/i_anime_repository.dart';
import 'package:anime_portal/src/app/model/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_anime_state.dart';
part 'top_anime_cubit.freezed.dart';

class TopAnimeCubit extends Cubit<TopAnimeState> {
  TopAnimeCubit(this._repository) : super(TopAnimeState.initial());

  final IAnimeRepository _repository;

  Future<void> getTrendingAnime() async {
    emit(state.copyWith(trendingAnimeLoading: true));

    final failureOrTrendingAnime = await _repository.getTrendingAnime();

    emit(
      failureOrTrendingAnime.fold(
        (failure) => state.copyWith(
          trendingAnimeLoading: false,
          trendingAnimeFailure: failure,
          trendingAnimeList: IList(),
        ),
        (topAnime) => state.copyWith(
          trendingAnimeLoading: false,
          trendingAnimeFailure: Failure.none(),
          trendingAnimeList: topAnime,
        ),
      ),
    );
  }

  Future<void> getTopAnime() async {
    emit(state.copyWith(topAnimeLoading: true));

    final failureOrTopAnime = await _repository.getTopAnime();

    emit(
      failureOrTopAnime.fold(
        (failure) => state.copyWith(
          topAnimeLoading: false,
          topAnimeFailure: failure,
          topAnimeList: IList(),
        ),
        (topAnime) => state.copyWith(
          topAnimeLoading: false,
          topAnimeFailure: Failure.none(),
          topAnimeList: topAnime,
        ),
      ),
    );
  }

  Future<void> getTrendingManga() async {
    emit(state.copyWith(trendingMangaLoading: true));

    final failureOrTopManga = await _repository.getTrendingManga();

    emit(
      failureOrTopManga.fold(
        (failure) => state.copyWith(
          trendingMangaLoading: false,
          trendingMangaFailure: failure,
          trendingMangaList: IList(),
        ),
        (trendingManga) => state.copyWith(
          trendingMangaLoading: false,
          trendingMangaFailure: Failure.none(),
          trendingMangaList: trendingManga,
        ),
      ),
    );
  }
}

import 'package:anime_portal/src/anime/model/anime.dart';
import 'package:anime_portal/src/anime/model/character_staff.dart';
import 'package:anime_portal/src/anime/model/episode.dart';
import 'package:anime_portal/src/anime/model/picture.dart';
import 'package:anime_portal/src/anime/repository/i_anime_repository.dart';
import 'package:anime_portal/src/app/model/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_state.dart';
part 'anime_cubit.freezed.dart';

class AnimeCubit extends Cubit<AnimeState> {
  AnimeCubit(this._repository) : super(AnimeState.initial());

  final IAnimeRepository _repository;

  Future<void> getAnimeByID(int id) async {
    emit(state.copyWith(loading: true));

    final failureOrAnime = await _repository.getAnimeById(id);

    emit(
      failureOrAnime.fold(
        (failure) => state.copyWith(
          loading: false,
          failure: failure,
          anime: Anime.empty(),
        ),
        (anime) => state.copyWith(
          loading: false,
          failure: Failure.none(),
          anime: anime,
        ),
      ),
    );
  }

  Future<void> getCharacterByID(int id) async {
    emit(state.copyWith(characterStaffLoading: true));

    final failureOrCharacter = await _repository.getCharacterStaff(id);

    emit(
      failureOrCharacter.fold(
        (failure) => state.copyWith(
          characterStaffLoading: false,
          characterStaffFailure: failure,
          characterStaff: CharacterStaff.empty(),
        ),
        (characterStaff) => state.copyWith(
          characterStaffLoading: false,
          characterStaffFailure: Failure.none(),
          characterStaff: characterStaff,
        ),
      ),
    );
  }

  Future<void> getEpisodesByID(int id) async {
    emit(state.copyWith(episodeLoading: true));

    final failureOrEpisodes = await _repository.getAnimeEpisodes(id);

    emit(
      failureOrEpisodes.fold(
        (failure) => state.copyWith(
          episodeLoading: false,
          episodeFailure: failure,
          episodes: [],
        ),
        (episodes) => state.copyWith(
          episodeLoading: false,
          episodeFailure: Failure.none(),
          episodes: episodes,
        ),
      ),
    );
  }

  Future<void> getPicturesByID(int id) async {
    emit(state.copyWith(picturesLoading: true));

    final failureOrPictures = await _repository.getAnimePictures(id);

    emit(
      failureOrPictures.fold(
        (failure) => state.copyWith(
          picturesLoading: false,
          picturesFailure: failure,
          pictures: [],
        ),
        (pictures) => state.copyWith(
          picturesLoading: false,
          picturesFailure: Failure.none(),
          pictures: pictures,
        ),
      ),
    );
  }
}

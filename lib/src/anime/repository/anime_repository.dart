import 'package:anime_portal/src/anime/model/anime.dart';
import 'package:anime_portal/src/anime/model/character_staff.dart';
import 'package:anime_portal/src/anime/model/episode.dart';
import 'package:anime_portal/src/anime/model/picture.dart';
import 'package:anime_portal/src/anime/model/review.dart';
import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/anime/repository/converters.dart';
import 'package:anime_portal/src/anime/repository/i_anime_repository.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:anime_portal/src/app/model/failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:jikan_api/jikan_api.dart' as jikan;

class AnimeRepository implements IAnimeRepository {
  AnimeRepository._();

  static final AnimeRepository instance = AnimeRepository._();

  final _api = jikan.Jikan();

  @override
  Future<Either<Failure, IList<Top>>> getTrendingAnime() async {
    try {
      final result = await _api.getTop(
        jikan.TopType.anime,
        subtype: jikan.TopSubtype.airing,
      );

      final topList = convertTopListToDomain(result.toList());

      return right(topList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch top anime'));
    }
  }

  @override
  Future<Either<Failure, IList<Top>>> getAiringToday(int weekday) async {
    try {
      late jikan.WeekDay weekDay;
      late IList<Top> animeList;

      switch (weekday) {
        case 1:
          weekDay = jikan.WeekDay.monday;
          break;
        case 2:
          weekDay = jikan.WeekDay.tuesday;
          break;
        case 3:
          weekDay = jikan.WeekDay.wednesday;
          break;
        case 4:
          weekDay = jikan.WeekDay.thursday;
          break;
        case 5:
          weekDay = jikan.WeekDay.friday;
          break;
        case 6:
          weekDay = jikan.WeekDay.saturday;
          break;
        case 7:
          weekDay = jikan.WeekDay.sunday;
          break;
        default:
          weekDay = jikan.WeekDay.monday;
          break;
      }
      final result = await _api.getSchedule(weekday: weekDay);

      switch (weekday) {
        case 1:
          animeList = convertScheduleToAnime(result.monday!.toList());
          break;
        case 2:
          animeList = convertScheduleToAnime(result.tuesday!.toList());
          break;
        case 3:
          animeList = convertScheduleToAnime(result.wednesday!.toList());
          break;
        case 4:
          animeList = convertScheduleToAnime(result.thursday!.toList());
          break;
        case 5:
          animeList = convertScheduleToAnime(result.friday!.toList());
          break;
        case 6:
          animeList = convertScheduleToAnime(result.saturday!.toList());
          break;
        case 7:
          animeList = convertScheduleToAnime(result.sunday!.toList());
          break;
        default:
          animeList = convertScheduleToAnime(result.monday!.toList());
          break;
      }

      return right(animeList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch airing list'));
    }
  }

  @override
  Future<Either<Failure, IList<Top>>> getTrendingManga() async {
    try {
      final result = await _api.getTop(jikan.TopType.manga);

      final topList = convertTopListToDomain(result.toList());

      return right(topList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch trending manga'));
    }
  }

  @override
  Future<Either<Failure, IList<Top>>> getTopAnime() async {
    try {
      final result = await _api.getTop(
        jikan.TopType.anime,
        subtype: jikan.TopSubtype.favorite,
      );

      final topList = convertTopListToDomain(result.toList());

      return right(topList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch top anime'));
    }
  }

  @override
  Future<Either<Failure, Anime>> getAnimeById(int id) async {
    try {
      final result = await _api.getAnimeInfo(id);

      final anime = convertAnimeToDomain(result);

      return right(anime);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch anime information'));
    }
  }

  @override
  Future<Either<Failure, CharacterStaff>> getCharacterStaff(int id) async {
    try {
      final character = await _api.getAnimeCharactersStaff(id);

      return right(convertCharacterStaffToDomain(character));
    } catch (e) {
      return left(const Failure(message: 'Could not fetch anime information'));
    }
  }

  @override
  Future<Either<Failure, List<Episode>>> getAnimeEpisodes(int id) async {
    try {
      final result = await _api.getAnimeEpisodes(id);

      final episodeList = result.map((e) => convertEpisodeToDomain(e)).toList();

      return right(episodeList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch anime information'));
    }
  }

  @override
  Future<Either<Failure, List<Picture>>> getAnimePictures(int id) async {
    final result = await _api.getAnimePictures(id);

    final pictureList = result.map((p0) => convertPictureToDomain(p0)).toList();

    return right(pictureList);
  }

  @override
  Future<Either<Failure, List<Top>>> getAnimeRecommendations(
    int id,
  ) async {
    try {
      final result = await _api.getAnimeRecommendations(id);

      final recommendationsList = result
          .map(
            (e) => convertRecommendationToDomain(e),
          )
          .toList();

      return right(recommendationsList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch anime information'));
    }
  }

  @override
  Future<Either<Failure, List<Review>>> getAnimeReviews(int id) async {
    try {
      final result = await _api.getAnimeReviews(id);

      final reviewsList = result
          .map(
            (e) => convertReviewToDomain(e),
          )
          .toList();

      return right(reviewsList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch anime information'));
    }
  }

  @override
  Future<Either<Failure, List<Top>>> searchAnime(String query)async {
    try {
      final result = await _api.search(query, jikan.SearchType.anime);

      final searchList = result
          .map(
            (e) => convertSearchToDomain(e),
          )
          .toList();

      return right(searchList);
    } catch (e) {
      return left(const Failure(message: 'Could not fetch anime information'));
    }
  }
}

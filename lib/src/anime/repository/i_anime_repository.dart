import 'package:anime_portal/src/anime/model/anime.dart';
import 'package:anime_portal/src/anime/model/character_staff.dart';
import 'package:anime_portal/src/anime/model/episode.dart';
import 'package:anime_portal/src/anime/model/generic_info.dart';
import 'package:anime_portal/src/anime/model/picture.dart';
import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/app/model/failure.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class IAnimeRepository {
  Future<Either<Failure, IList<Top>>> getTrendingAnime();

  Future<Either<Failure, IList<Top>>> getTopAnime();

  Future<Either<Failure, IList<Top>>> getAiringToday(int weekday);

  Future<Either<Failure, IList<Top>>> getTrendingManga();

   Future<Either<Failure, Anime>> getAnimeById(int id);

   Future<Either<Failure, CharacterStaff>> getCharacterStaff(int id);

   Future<Either<Failure, List<Episode>>> getAnimeEpisodes(int id);

   Future<Either<Failure, List<Picture>>> getAnimePictures(int id);

   Future<Either<Failure, List<Top>>> getAnimeRecommendations(int id);
}

import 'dart:math';

import 'package:jikan_api/jikan_api.dart';

class JikanApiService {
  var _jikan = Jikan();

  getTopAnime() async {
    var top = await _jikan.getTop(TopType.anime, subtype: TopSubtype.airing);
    return top;
  }

  Future<Anime> getAnimeInfo(int animeId) async {
    Anime anime = await _jikan.getAnimeInfo(animeId);
    return anime;
  }

  Future<CharacterStaff> getAnimeCharactersStaff(int animeId) async {
    var characterStaff = await _jikan.getAnimeCharactersStaff(animeId);
    return characterStaff;
  }

  getAnimeEpisodes(int animeId, {int page = 1}) async {
    var episodes = await _jikan.getAnimeEpisodes(animeId, page: page);
    print(episodes.toString());
    return episodes;
  }

  getAnimePictures(int animeId) async {
    var pictures = await _jikan.getAnimePictures(animeId);
    return pictures;
  }

  // Does not work
  Future<String> getAnimeMoreInfo(int animeId) async {
    var info = await _jikan.getAnimeMoreInfo(animeId);
    return info;
  }

  Future<Schedule> getSchedule({WeekDay weekday}) async {
    Schedule schedule = await _jikan.getSchedule(weekday: weekday);
    return schedule;
  }

  search(String query, SearchType type, {int page = 1}) async {
    var searchList = await _jikan.search(query, type, page: page);
    return searchList;
  }

  Future<Character> getCharacterInfo(int characterId) async {
    var character = await _jikan.getCharacterInfo(characterId);
    //print(character);
    return character;
  }

  getCharacterPictures(int characterId) {}

  getAnimeNews(int animeId) async {}
  getAnimeVideos(int animeId) async {}
  getAnimeStats(int animeId) async {}
  getAnimeForum(int animeId, {ForumType type}) async {}
  getAnimeReviews(int animeId, {int page = 1}) async {}
  getAnimeRecommendations(int animeId) async {}
  getAnimeUserUpdates(int animeId, {int page = 1}) async {}
}

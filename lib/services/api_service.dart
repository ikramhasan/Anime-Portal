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
    return episodes;
  }

  getAnimePictures(int animeId) async {
    var pictures = await _jikan.getAnimePictures(animeId);
    return pictures;
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
    Character character = await _jikan.getCharacterInfo(characterId);
    return character;
  }

  getAnimeNews(int animeId) async {
    var articles = await _jikan.getAnimeNews(animeId);
    return articles;
  }

  getCharacterPictures(int characterId) async {
    var pictureList = await _jikan.getCharacterPictures(characterId);
    return pictureList;
  }

  getAnimeRecommendations(int animeId) async {
    var recommendations = await _jikan.getAnimeRecommendations(animeId);
    return recommendations;
  }

  getAnimeReviews(int animeId, {int page = 1}) async {
    var reviews = await _jikan.getAnimeReviews(animeId);
    return reviews;
  }

  getAnimeStats(int animeId) async {
    Stats stats = await _jikan.getAnimeStats(animeId);
    return stats;
  }

  Future<Season> getSeason({int year, SeasonType season}) async {
    var season = await _jikan.getSeason();
    return season;
  }

  // TODO: Implement feature
  getAnimeVideos(int animeId) async {
    var s = await _jikan.getAnimeVideos(animeId);
    print(s);
  }

  // TODO: Implement feature
  getAnimeForum(int animeId, {ForumType type}) async {}

  // TODO: Implement feature
  getAnimeUserUpdates(int animeId, {int page = 1}) async {}

  // Does not work
  Future<String> getAnimeMoreInfo(int animeId) async {
    var info = await _jikan.getAnimeMoreInfo(animeId);
    print(info.toString());
    return info;
  }

  // TODO: Implement feature
  Future<Season> getSeasonLater() async {}

  // TODO: Implement feature
  getSeasonArchive() async {
    var seasonArchiveList = await _jikan.getSeasonArchive();
    print(seasonArchiveList.toString());
    return seasonArchiveList;
  }
}

import 'package:anime_portal/services/api_service.dart';
import 'package:get/get.dart';
import 'package:jikan_api/jikan_api.dart';

class AnimeController extends GetxController {
  final JikanApiService _api = JikanApiService();

  var trendingList;
  var airingTodayList;
  var airingThisSeasonList;


  getTrending() async {
    trendingList = await _api.getTopAnime();
    update();
  }

  getAiringThisSeason() {}

  getAiringToday(int dayInt) async {
    switch (dayInt) {
      case 1:
        await _api.getSchedule();
        update();
        break;
      case 2:
        await _api.getSchedule().then((value) {
          airingTodayList = value.tuesday;
          update();
        });
        break;
      case 3:
        await _api.getSchedule().then((value) {
          airingTodayList = value.wednesday;
          update();
        });
        break;
      case 4:
        await _api.getSchedule().then((value) {
          airingTodayList = value.thursday;
          update();
        });
        break;
      case 5:
        await _api.getSchedule().then((value) {
          airingTodayList = value.friday;
          update();
        });
        break;
      case 6:
        await _api.getSchedule().then((value) {
          airingTodayList = value.saturday;
          update();
        });
        break;
      case 7:
        await _api.getSchedule().then((value) {
          airingTodayList = value.sunday;
          update();
        });
        break;
      default:
        await _api.getSchedule().then((value) {
          airingTodayList = value.other;
          update();
        });
    }

    print('Airing today : $airingTodayList');

    // await _api.getSchedule(weekday: weekday).then((value) {
    //   airingTodayList = value.monday;
    // });
    // update();
  }
}

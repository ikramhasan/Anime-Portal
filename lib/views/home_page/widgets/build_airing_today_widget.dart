import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/airing_today_page/airing_today_page.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';

buildAiringTodayWidget({
  @required int weekday,
  @required JikanApiService api,
  @required BuildContext context,
}) {
  return Column(
    children: [
      buildTitleWidget(
        title: 'Airing Today',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AiringTodayPage(api: api),
            ),
          );
        },
      ),
      FutureBuilder(
        future: api.getSchedule(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var schedule = snapshot.data.unknown;

            switch (weekday) {
              case 1:
                schedule = snapshot.data.monday;
                break;
              case 2:
                schedule = snapshot.data.tuesday;
                break;
              case 3:
                schedule = snapshot.data.wednesday;
                break;
              case 4:
                schedule = snapshot.data.thursday;
                break;
              case 5:
                schedule = snapshot.data.friday;
                break;
              case 6:
                schedule = snapshot.data.saturday;
                break;
              case 7:
                schedule = snapshot.data.sunday;
                break;
              default:
                schedule = snapshot.data.other;
            }
            return Container(
              height: 215,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: schedule.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: AnimeCard(anime: schedule[index]),
                  );
                },
              ),
            );
          }
          return Container(
            height: 215,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
      SizedBox(height: 8),
    ],
  );
}

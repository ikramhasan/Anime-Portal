import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:anime_portal/views/search_page/search_page.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:jikan_api/jikan_api.dart';

class HomePage extends StatelessWidget {
  final JikanApiService _api = JikanApiService();

  buildTrendingListViewWidget() {
    return FutureBuilder(
      future: _api.getTopAnime(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            height: 215,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                final anime = snapshot.data[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: AnimeCard(anime: anime),
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
    );
  }

  buildAiringTodayWidget(int weekday) {
    return FutureBuilder(
      future: _api.getSchedule(),
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
                  child: Row(
                    children: [
                      AnimeCard(anime: schedule[index]),
                    ],
                  ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    int weekday = DateTime.now().weekday;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 16, top: 34),
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // TODO: Implement drawer here
                  },
                  splashColor: Colors.blue.withOpacity(0.5),
                  child: Icon(
                    LineIcons.stream,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: InkWell(
                    splashColor: Colors.blue.withOpacity(0.5),
                    child: Icon(
                      LineIcons.search,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      showSearch(
                        context: context,
                        delegate: SearchPage(),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            buildTitleWidget(
              title: 'Trending Now',
              onPressed: () {
                // TODO: Implement navigating to anime list page
              },
            ),
            SizedBox(height: 8),
            buildTrendingListViewWidget(),
            SizedBox(height: 8),
            buildTitleWidget(
              title: 'Airing today',
              onPressed: () {
                // TODO: Implement navigating to anime list page
              },
            ),
            buildAiringTodayWidget(weekday),
          ],
        ),
      ),
    );
  }
}

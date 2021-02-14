import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/anime_page/anime_page.dart';
import 'package:anime_portal/widgets/anime_rating_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ViewAllPage extends StatelessWidget {
  final anime;
  final JikanApiService api;
  final String widgetType;

  const ViewAllPage({
    Key key,
    this.anime,
    @required this.api,
    @required this.widgetType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    buildAnimeGridWidget(snapshot) {
      var schedule;

      if (widgetType == 'airing') {
        int weekday = DateTime.now().weekday;

        schedule = snapshot.data.unknown;

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
      }
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.72,
            ),
            shrinkWrap: true,
            itemCount: widgetType == 'airing'
                ? schedule.length
                : widgetType == 'season'
                    ? snapshot.data.anime.length
                    : snapshot.data.length,
            itemBuilder: (context, index) {
              final anime = widgetType == 'airing'
                  ? schedule[index]
                  : widgetType == 'season'
                      ? snapshot.data.anime[index]
                      : snapshot.data[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimePage(malId: anime.malId),
                      ),
                    );
                  },
                  child: Container(
                    height: 130,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 125,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: CachedNetworkImage(
                                  imageUrl: anime.imageUrl,
                                  placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  errorWidget: (context, url, error) => Center(
                                    child: Icon(Icons.error),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 125,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.transparent.withOpacity(0.0),
                                        Colors.black.withOpacity(0.5),
                                      ],
                                      stops: [
                                        0.7,
                                        1.0
                                      ])),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: AnimeRatingBar(
                                rating: widgetType == 'recommendation'
                                    ? null
                                    : anime.score,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              anime.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }

    return FutureBuilder(
      future: widgetType == 'trending'
          ? api.getTopAnime()
          : widgetType == 'airing'
              ? api.getSchedule()
              : widgetType == 'season'
                  ? api.getSeason()
                  : api.getAnimeRecommendations(anime.malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return widgetType == 'recommendation'
              ? buildAnimeGridWidget(snapshot)
              : Column(
                  children: [
                    buildAnimeGridWidget(snapshot),
                  ],
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
}

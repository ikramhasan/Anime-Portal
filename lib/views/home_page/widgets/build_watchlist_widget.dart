import 'package:anime_portal/models/user_model.dart';
import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/services/database.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';

buildWatchlistWidget({
  @required JikanApiService api,
  @required BuildContext context,
  @required UserModel user,
}) {
  final database = Database();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTitleWidget(
        title: 'My Watchlist',
        onPressed: () {
          // TODO: Add nevigating to watchlist page

          // Get.to(WatchlistPage(api: api))
        },
      ),
      SizedBox(height: 8),
      Container(
        height: 215,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: user.watchlist.length,
          itemBuilder: (context, index) {
            return FutureBuilder(
              //stream: database.streamAnimeWatchList(user),
              future: api.getAnimeInfo(user.watchlist[index]),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  final anime = snapshot.data;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: AnimeCard(anime: anime),
                  );
                }
                return Container(
                  height: 185,
                  width: 130,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            );
          },
        ),
      ),
      SizedBox(height: 8),
    ],
  );
}

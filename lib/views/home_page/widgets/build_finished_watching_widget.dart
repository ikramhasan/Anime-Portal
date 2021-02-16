import 'package:anime_portal/models/user_model.dart';
import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';

buildFinishedWatchingWidget({
  @required JikanApiService api,
  @required BuildContext context,
  @required UserModel user,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTitleWidget(
        title: 'Finished Watching',
        onPressed: () {
          // TODO: Add nevigating to finshed watching page

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => FinishedWatchingPage(api: api),
          //   ),
          // );
        },
      ),
      SizedBox(height: 8),
      Container(
        height: 215,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: user.finishedWatching.length,
          itemBuilder: (context, index) {
            return FutureBuilder(
              future: api.getAnimeInfo(user.finishedWatching[index]),
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

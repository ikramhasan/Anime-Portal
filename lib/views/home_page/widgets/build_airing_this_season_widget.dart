import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/airing_this_season_page/airing_this_season_page.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';

buildAiringThisSeasonWidget({
  @required JikanApiService api,
  @required BuildContext context,
}) {
  return Column(
    children: [
      buildTitleWidget(
        title: 'Airing This Season',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AiringThisSeasonPage(api: api),
            ),
          );
        },
      ),
      FutureBuilder(
        future: api.getSeason(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              height: 215,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.anime.length,
                itemBuilder: (context, index) {
                  final anime = snapshot.data.anime[index];
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
      ),
    ],
  );
}

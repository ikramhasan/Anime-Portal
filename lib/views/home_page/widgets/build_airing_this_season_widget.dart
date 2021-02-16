import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/views/view_all_page/view_all_page.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

buildAiringThisSeasonWidget({
  @required JikanApiService api,
  @required BuildContext context,
}) {
  var animeList;

  return Column(
    children: [
      buildTitleWidget(
        title: 'Airing This Season',
        onPressed: () {
          Get.to(
            ViewAllPage(
              animeList: animeList,
              appbarTitle: 'Airing This Season',
            ),
          );
        },
      ),
      FutureBuilder(
        future: api.getSeason(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            animeList = snapshot.data.anime;
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

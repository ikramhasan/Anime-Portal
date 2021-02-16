import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/trending_now_page/trending_now_page.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';

buildTrendingListViewWidget({
  @required JikanApiService api,
  @required BuildContext context,
}) {
  return Column(
    children: [
      buildTitleWidget(
        title: 'Trending Now',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TrendingNowPage(api: api),
            ),
          );
        },
      ),
      SizedBox(height: 8),
      FutureBuilder(
        future: api.getTopAnime(),
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
      ),
      SizedBox(height: 8),
    ],
  );
}

import 'package:anime_portal/widgets/anime_card.dart';
import 'package:flutter/material.dart';

buildTrendingListViewWidget(api) {
  return FutureBuilder(
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
  );
}

import 'package:anime_portal/widgets/anime_card.dart';
import 'package:flutter/material.dart';

buildAiringThisSeasonWidget(api) {
    return FutureBuilder(
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
    );
  }
import 'package:anime_portal/views/anime_page/k_double_text.dart';
import 'package:anime_portal/widgets/anime_review_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';

buildAnimeStatsWidget(anime, api) {
  api.getAnimeStats(anime.malId);
  return FutureBuilder(
    future: api.getAnimeStats(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final Stats stats = snapshot.data;
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimeReviewBar(
                    rating10: stats.scores.score10.percentage,
                    rating9: stats.scores.score9.percentage,
                    rating8: stats.scores.score8.percentage,
                    rating7: stats.scores.score7.percentage,
                    rating6: stats.scores.score6.percentage,
                    rating5: stats.scores.score5.percentage,
                    rating4: stats.scores.score4.percentage,
                    rating3: stats.scores.score3.percentage,
                    rating2: stats.scores.score2.percentage,
                    rating1: stats.scores.score1.percentage,
                  ),
                  SizedBox(height: 8),
                  DoubleText(
                    text1: 'Watching: ',
                    text2: stats.watching.toString(),
                  ),
                  DoubleText(
                    text1: 'Plan to watch: ',
                    text2: stats.planToWatch.toString(),
                  ),
                  DoubleText(
                    text1: 'Completed: ',
                    text2: stats.completed.toString(),
                  ),
                  DoubleText(
                    text1: 'On hold: ',
                    text2: stats.onHold.toString(),
                  ),
                  DoubleText(
                    text1: 'Dropped: ',
                    text2: stats.dropped.toString(),
                  ),
                  DoubleText(
                    text1: 'Total: ',
                    text2: stats.total.toString(),
                  ),
                ],
              ),
            ),
          ),
        );
      }
      return Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}

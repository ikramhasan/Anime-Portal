import 'package:anime_portal/views/anime_page/k_double_text.dart';
import 'package:flutter/material.dart';

class AnimeDetails extends StatelessWidget {
  final anime;

  const AnimeDetails({Key key, @required this.anime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String genres = '';
    String studios = '';
    anime.genres.forEach((genericItem) {
      genres = genres + genericItem.name + ', ';
    });
    anime.studios.forEach((genericItem) {
      studios = studios + genericItem.name + ', ';
    });
    try {
      genres = genres.substring(0, genres.length - 2);
      studios = studios.substring(0, studios.length - 2);
    } catch (e) {
      print(e);
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DoubleText(
            text1: 'Type',
            text2: anime.type,
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'Source',
            text2: anime.source,
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'Episodes',
            text2: anime.episodes.toString(),
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'Status',
            text2: anime.status,
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'Duration',
            text2: anime.duration,
          ),
          SizedBox(height: 5),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: DoubleText(
              text1: 'Genre',
              text2: genres,
            ),
          ),
          DoubleText(
            text1: 'Rating',
            text2: anime.rating,
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'Score',
            text2: '${anime.score.toString()} of 10',
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'MAL Rank',
            text2: anime.rank.toString(),
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'Premiered At',
            text2: anime.premiered,
          ),
          SizedBox(height: 5),
          DoubleText(
            text1: 'Broadcast',
            text2: anime.broadcast,
          ),
          SizedBox(height: 5),
          Container(
            height: 40,
            width: 250,
            child: DoubleText(
              text1: 'Studios',
              text2: studios,
            ),
          ),
        ],
      ),
    );
  }
}

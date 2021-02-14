import 'package:anime_portal/views/anime_page/anime_page.dart';
import 'package:anime_portal/widgets/anime_cached_image.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  final anime;

  const AnimeCard({Key key, @required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AnimePage(malId: anime.malId),
            ));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimeCachedImage(anime: anime),
          Container(
            width: 125,
            child: Text(
              anime.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

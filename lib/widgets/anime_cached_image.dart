import 'package:anime_portal/widgets/anime_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AnimeCachedImage extends StatelessWidget {
  final anime;

  const AnimeCachedImage({Key key, @required this.anime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 185,
          width: 125,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: CachedNetworkImage(
              imageUrl: anime.imageUrl,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => Center(
                child: Icon(Icons.error),
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 185,
          width: 125,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.transparent.withOpacity(0.0),
                    Colors.black.withOpacity(0.5),
                  ],
                  stops: [
                    0.7,
                    1.0
                  ])),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: AnimeRatingBar(rating: anime.score, size: 15),
        ),
      ],
    );
  }
}

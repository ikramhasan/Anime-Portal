import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AnimeRatingBar extends StatelessWidget {
  final double rating;
  final double size;

  const AnimeRatingBar({
    Key key,
    @required this.rating,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return rating != null
        ? SmoothStarRating(
            allowHalfRating: false,
            onRated: (v) {},
            starCount: 5,
            rating: rating - 5,
            size: size,
            isReadOnly: true,
            color: Color(0xFFFFD700),
            borderColor: Color(0xFFFFD700),
            spacing: 0.0,
          )
        : Container();
  }
}

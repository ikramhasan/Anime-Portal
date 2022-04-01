import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AnimeRatingBar extends StatelessWidget {
  const AnimeRatingBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double? rating;

  @override
  Widget build(BuildContext context) {
    return rating != null
        ? RatingBar(
            itemCount: 5,
            allowHalfRating: true,
            initialRating: rating! - 5,
            ignoreGestures: true,
            glow: true,
            itemSize: 15,
            ratingWidget: RatingWidget(
              empty: const Icon(
                Icons.star_outline_rounded,
                color: Color(0xFFFFD700),
              ),
              full: const Icon(
                Icons.star_rounded,
                color: Color(0xFFFFD700),
              ),
              half: const Icon(
                Icons.star_half_rounded,
                color: Color(0xFFFFD700),
              ),
            ),
            onRatingUpdate: (value) {},
          )
        : const SizedBox.shrink();
  }
}

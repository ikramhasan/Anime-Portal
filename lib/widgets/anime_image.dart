import 'package:flutter/material.dart';

class AnimeImage extends StatelessWidget {
  final String imageUrl;

  const AnimeImage({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Image.network(
        imageUrl,
        height: 330,
        width: 250,
        fit: BoxFit.cover,
      ),
    );
  }
}

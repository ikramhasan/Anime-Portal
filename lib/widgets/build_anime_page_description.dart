import 'package:flutter/material.dart';

buildAnimePageDescription(anime) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
                anime.synopsis ?? '',
                softWrap: true,
                style: TextStyle(color: Colors.grey),
              ),
      );
    }
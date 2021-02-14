import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:anime_portal/widgets/anime_rating_bar.dart';
import 'package:line_icons/line_icons.dart';

buildAnimePageHeader(anime, context) {
  final date = DateFormat.yMMMMd('en_US');
  String dateString = date
      .format(
        DateTime.parse(anime.aired.from),
      )
      .toString();

  return Stack(
    children: [
      Container(
        height: 400,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
          anime.imageUrl,
          fit: BoxFit.fitWidth,
        ),
      ),
      Container(
        height: 400,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.transparent.withOpacity(0.0),
              Color(0xFF171721).withOpacity(1.0),
            ],
            stops: [0.0, 1.0],
          ),
        ),
      ),
      Positioned(
        bottom: 80,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              anime.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 40,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: AnimeRatingBar(rating: anime.score, size: 25),
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              dateString ??
                  '' +
                      ' | ' +
                      anime.type +
                      ' | ' +
                      anime.episodes.toString() +
                      ' Episodes',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
      Positioned(
        top: 34,
        left: 16,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            LineIcons.arrowLeft,
            color: Colors.blue,
          ),
        ),
      ),
    ],
  );
}

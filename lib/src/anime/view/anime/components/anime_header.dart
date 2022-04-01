import 'package:anime_portal/src/anime/model/anime.dart';
import 'package:anime_portal/src/anime/view/components/anime_rating_bar.dart';
import 'package:anime_portal/src/app/converters/converters.dart';
import 'package:anime_portal/src/app/view/components/ap_back_button.dart';
import 'package:flutter/material.dart';

class AnimeHeader extends StatelessWidget {
  const AnimeHeader({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            anime.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.transparent.withOpacity(0.0),
                const Color(0xFF171721).withOpacity(1.0),
              ],
              stops: const [0.0, 1.0],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      anime.title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 8),
                    AnimeRatingBar(rating: anime.score),
                    const SizedBox(height: 8),
                    Text(
                      (convertDateToHumanReadableText(anime.aired.from) ?? '') +
                          ' | ' +
                          (anime.type ?? '') +
                          (anime.episodes != null
                              ? ' | ' + anime.episodes.toString() + ' Episodes'
                              : ''),
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 32,
          child: APBackButton(),
        ),
      ],
    );
  }
}

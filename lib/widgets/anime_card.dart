import 'package:anime_portal/controllers/user_controller.dart';
import 'package:anime_portal/services/database.dart';
import 'package:anime_portal/views/anime_page/anime_page.dart';
import 'package:anime_portal/widgets/anime_cached_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeCard extends StatelessWidget {
  final anime;

  const AnimeCard({Key key, @required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final database = Database();
    final user = Get.find<UserController>().user;

    return GestureDetector(
      onLongPress: () {
        database.addAnimeToWatchList(user, anime.malId);
      },
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimePage(malId: anime.malId),
          ),
        );
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

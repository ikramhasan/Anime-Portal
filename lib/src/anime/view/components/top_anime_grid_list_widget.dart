import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/anime/view/components/anime_card.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

class TopAnimeGridListWidget extends StatelessWidget {
  const TopAnimeGridListWidget({
    Key? key,
    required this.animeList,
  }) : super(key: key);

  final IList<Top> animeList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: animeList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1 / 1.85,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return AnimeCard(
          id: animeList[index].id,
          title: animeList[index].title,
          imageUrl: animeList[index].imageUrl,
        );
      },
    );
  }
}

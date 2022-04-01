import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/anime/view/components/anime_card.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

class AnimeHorizontalListWidget extends StatelessWidget {
  const AnimeHorizontalListWidget({
    Key? key,
    required this.title,
    required this.animeList,
    this.seeAllPressed,
  }) : super(key: key);

  final String title;
  final IList<Top> animeList;
  final VoidCallback? seeAllPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    height: 2,
                    width: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Theme.of(context).canvasColor.withOpacity(0.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              seeAllPressed != null
                  ? TextButton(
                      onPressed: seeAllPressed,
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      ),
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 223,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: animeList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16 : 8,
                  right: index == animeList.length - 1 ? 16 : 0,
                ),
                child: AnimeCard(
                  id: animeList[index].id,
                  title: animeList[index].title,
                  imageUrl: animeList[index].imageUrl,
                  score: animeList[index].score,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

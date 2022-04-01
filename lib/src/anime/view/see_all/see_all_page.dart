import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/anime/view/components/top_anime_grid_list_widget.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({
    Key? key,
    required this.animeList,
    required this.title,
  }) : super(key: key);

  final String title;
  final IList<Top> animeList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TopAnimeGridListWidget(animeList: animeList),
      ),
    );
  }
}

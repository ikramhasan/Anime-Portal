import 'package:anime_portal/src/anime/controller/top_anime_controller/top_anime_cubit.dart';
import 'package:anime_portal/src/anime/view/components/anime_horizontal_list_widget.dart';
import 'package:anime_portal/src/anime/view/see_all/see_all_page.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopMangaList extends StatelessWidget {
  const TopMangaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAnimeCubit, TopAnimeState>(
      builder: (context, state) {
        if (state.trendingMangaLoading) {
          return const SizedBox(
            height: 222,
            child: LoadingWidget(),
          );
        } else if (state.trendingMangaList.isNotEmpty) {
          return AnimeHorizontalListWidget(
            title: 'Top Manga',
            seeAllPressed: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SeeAllPage(
                    title: 'Trending Manga',
                    animeList: state.trendingMangaList,
                  ),
                ),
              );
            },
            animeList: state.trendingMangaList,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

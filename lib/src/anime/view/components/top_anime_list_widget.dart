import 'package:anime_portal/src/anime/controller/top_anime_controller/top_anime_cubit.dart';
import 'package:anime_portal/src/anime/view/components/anime_horizontal_list_widget.dart';
import 'package:anime_portal/src/anime/view/see_all/see_all_page.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopAnimeList extends StatelessWidget {
  const TopAnimeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAnimeCubit, TopAnimeState>(
      builder: (context, state) {
        if (state.topAnimeLoading) {
          return const SizedBox(
            height: 222,
            child: LoadingWidget(),
          );
        } else if (state.topAnimeList.isNotEmpty) {
          return AnimeHorizontalListWidget(
            title: 'Top Anime',
            seeAllPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SeeAllPage(
                    title: 'Top Anime',
                    animeList: state.topAnimeList,
                  ),
                ),
              );
            },
            animeList: state.topAnimeList,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

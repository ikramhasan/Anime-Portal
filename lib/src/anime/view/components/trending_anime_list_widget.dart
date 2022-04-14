import 'package:anime_portal/src/anime/controller/top_anime_controller/top_anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/watchlist_controller/watchlist_cubit.dart';
import 'package:anime_portal/src/anime/view/components/anime_horizontal_list_widget.dart';
import 'package:anime_portal/src/anime/view/see_all/see_all_page.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingAnimeList extends StatelessWidget {
  const TrendingAnimeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAnimeCubit, TopAnimeState>(
      builder: (context, state) {
        if (state.trendingAnimeLoading) {
          return const SizedBox(
            height: 222,
            child: LoadingWidget(),
          );
        } else if (state.trendingAnimeList.isNotEmpty) {
          return AnimeHorizontalListWidget(
            title: 'Trending Now',
            seeAllPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider<WatchlistCubit>(
                    create: (context) => WatchlistCubit(),
                    child: SeeAllPage(
                      title: 'Trending Now',
                      animeList: state.trendingAnimeList,
                    ),
                  ),
                ),
              );
            },
            animeList: state.trendingAnimeList,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

import 'package:anime_portal/src/anime/controller/watchlist_controller/watchlist_cubit.dart';
import 'package:anime_portal/src/anime/view/components/anime_horizontal_list_widget.dart';
import 'package:anime_portal/src/anime/view/see_all/see_all_page.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeWatchlistWidget extends StatelessWidget {
  const AnimeWatchlistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchlistCubit, WatchlistState>(
        builder: (context, state) {
      // if (state.watchlist.isEmpty) {
      //   return const SizedBox.shrink();
      // } else {
      return Column(
        children: [
          AnimeHorizontalListWidget(
            title: 'Watchlist',
            seeAllPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider<WatchlistCubit>(
                    create: (context) => WatchlistCubit(),
                    child: SeeAllPage(
                      title: 'Your Watchlist',
                      animeList: state.watchlist.lock,
                    ),
                  ),
                ),
              );
            },
            animeList: state.watchlist.lock,
          ),
          const SizedBox(height: 16),
        ],
      );
    }
        // },
        );
  }
}

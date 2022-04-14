import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/watchlist_controller/watchlist_cubit.dart';
import 'package:anime_portal/src/anime/view/anime/anime_page.dart';
import 'package:anime_portal/src/anime/view/components/anime_rating_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final animeWatchlistCubit = context.read<WatchlistCubit>();

    return AnimePage(
      id: 0,
      isAnimeInWatchlist: false,
      watchlistCubit: animeWatchlistCubit,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    context.read<AnimeCubit>().searchAnime(query);
    if (query.isNotEmpty) {
      return const SizedBox.shrink();
    } else {
      return BlocBuilder<AnimeCubit, AnimeState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.searchResult.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CachedNetworkImage(
                  imageUrl: state.searchResult[index].imageUrl,
                ),
                title: Text(state.searchResult[index].title),
                subtitle: AnimeRatingBar(
                  rating: state.searchResult[index].score,
                ),
              );
            },
          );
        },
      );
    }
  }
}

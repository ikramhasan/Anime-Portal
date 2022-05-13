import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/watchlist_controller/watchlist_cubit.dart';
import 'package:anime_portal/src/anime/repository/anime_repository.dart';
import 'package:anime_portal/src/anime/view/anime/anime_page.dart';
import 'package:anime_portal/src/anime/view/components/anime_rating_bar.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryController = useTextEditingController();

    final animeWatchlistCubit = context.read<WatchlistCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            TextFormField(
              controller: queryController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                fillColor: Colors.grey[900],
                filled: true,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    if (queryController.text.isNotEmpty) {
                      context
                          .read<AnimeCubit>()
                          .searchAnime(queryController.text);
                    }
                  },
                ),
              ),
              keyboardAppearance: Brightness.dark,
              textInputAction: TextInputAction.search,
              onFieldSubmitted: (query) {
                context.read<AnimeCubit>().searchAnime(query);
              },
            ),
            const Divider(height: 32),
            BlocBuilder<AnimeCubit, AnimeState>(
              builder: (context, state) {
                if (state.searchLoading) {
                  return const LoadingWidget();
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.searchResult.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final anime = state.searchResult[index];

                        return ListTile(
                          onTap: () {
                            final topPresentAtList = animeWatchlistCubit
                                .state.watchlist
                                .where((element) => element.id == anime.id);

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => BlocProvider<AnimeCubit>(
                                  create: ((context) =>
                                      AnimeCubit(AnimeRepository.instance)),
                                  child: AnimePage(
                                    id: anime.id,
                                    isAnimeInWatchlist:
                                        topPresentAtList.isNotEmpty,
                                    watchlistCubit: animeWatchlistCubit,
                                  ),
                                ),
                              ),
                            );
                          },
                          contentPadding: EdgeInsets.zero,
                          leading: Image.network(anime.imageUrl),
                          title: Text(anime.title),
                          subtitle: AnimeRatingBar(rating: anime.score),
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

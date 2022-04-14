import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/watchlist_controller/watchlist_cubit.dart';
import 'package:anime_portal/src/anime/model/anime.dart';
import 'package:anime_portal/src/anime/view/anime/components/anime_header.dart';
import 'package:anime_portal/src/anime/view/anime/components/characters_widget.dart';
import 'package:anime_portal/src/anime/view/anime/components/episodes_widget.dart';
import 'package:anime_portal/src/anime/view/anime/components/photos_widget.dart';
import 'package:anime_portal/src/anime/view/anime/components/recommendations_widget.dart';
import 'package:anime_portal/src/anime/view/anime/components/reviews_list_widget.dart';
import 'package:anime_portal/src/anime/view/anime/components/synopsis_widget.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimePage extends HookWidget {
  const AnimePage({
    Key? key,
    required this.id,
    required this.isAnimeInWatchlist,
    required this.watchlistCubit,
  }) : super(key: key);

  final int id;
  final bool isAnimeInWatchlist;
  final WatchlistCubit watchlistCubit;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 6);

    useEffect(() {
      context.read<AnimeCubit>().getAnimeByID(id);
      context.read<AnimeCubit>().getCharacterByID(id);
      context.read<AnimeCubit>().getEpisodesByID(id);
      context.read<AnimeCubit>().getPicturesByID(id);
      context.read<AnimeCubit>().getRecommendationsByID(id);
      context.read<AnimeCubit>().getReviewsByID(id);

      return null;
    }, []);

    return Scaffold(
      body: BlocBuilder<AnimeCubit, AnimeState>(
        builder: (context, state) {
          if (state.loading) {
            return const LoadingWidget();
          } else if (state.anime != Anime.empty()) {
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: AnimeHeader(
                      anime: state.anime,
                      isAnimeInWatchlist: isAnimeInWatchlist,
                      watchlistBloc: watchlistCubit,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: TabBar(
                      isScrollable: true,
                      controller: tabController,
                      tabs: const [
                        SizedBox(
                          child: Center(child: Text('Synopsis')),
                          height: 32,
                        ),
                        SizedBox(
                          child: Center(child: Text('Recommendations')),
                          height: 32,
                        ),
                        SizedBox(
                          child: Center(child: Text('Characters')),
                          height: 32,
                        ),
                        SizedBox(
                          child: Center(child: Text('Episodes')),
                          height: 32,
                        ),
                        SizedBox(
                          child: Center(child: Text('Photos')),
                          height: 32,
                        ),
                        SizedBox(
                          child: Center(child: Text('Reviews')),
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      controller: tabController,
                      children: [
                        SynopsisWidget(text: state.anime.synopsis),
                        BlocProvider<WatchlistCubit>(
                          create: (context) => WatchlistCubit(),
                          child: const RecommendationsWidget(),
                        ),
                        const CharactersWidget(),
                        const EpisodesWidget(),
                        const PhotosWidget(),
                        const ReviewsListWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

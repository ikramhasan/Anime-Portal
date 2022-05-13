import 'package:anime_portal/src/anime/controller/airing_today_controller/airing_today_cubit.dart';
import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/top_anime_controller/top_anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/watchlist_controller/watchlist_cubit.dart';
import 'package:anime_portal/src/anime/repository/anime_repository.dart';
import 'package:anime_portal/src/anime/view/components/airing_today_list_widget.dart';
import 'package:anime_portal/src/anime/view/components/anime_watchlist_widget.dart';
import 'package:anime_portal/src/anime/view/components/top_anime_list_widget.dart';
import 'package:anime_portal/src/anime/view/components/trending_anime_list_widget.dart';
import 'package:anime_portal/src/anime/view/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<TopAnimeCubit>().getTrendingAnime();
    context.read<TopAnimeCubit>().getTopAnime();
    // context.read<TopAnimeCubit>().getTrendingManga();
    context.read<AiringTodayCubit>().getAiringToday(DateTime.now().weekday);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Anime Portal',
          style: GoogleFonts.cinzel(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider<AnimeCubit>(
                        create: (context) =>
                            AnimeCubit(AnimeRepository.instance),
                      ),
                      BlocProvider<WatchlistCubit>(
                        create: (context) => WatchlistCubit(),
                      ),
                    ],
                    child: const SearchPage(),
                  ),
                ),
              );
              // showSearch(
              //   context: context,
              //   delegate: AnimeSearch(),
              // );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 16,
          ),
          child: Column(
            children: const [
              AnimeWatchlistWidget(),
              TrendingAnimeList(),
              SizedBox(height: 16),
              AiringTodayList(),
              SizedBox(height: 16),
              TopAnimeList(),
              SizedBox(height: 16),
              // TopMangaList(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:anime_portal/src/anime/controller/airing_today_controller/airing_today_cubit.dart';
import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/top_anime_controller/top_anime_cubit.dart';
import 'package:anime_portal/src/anime/controller/watchlist_controller/watchlist_cubit.dart';
import 'package:anime_portal/src/anime/repository/anime_repository.dart';
import 'package:anime_portal/src/anime/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        canvasColor: const Color(0xFF171721),
        primaryColor: const Color(0xFF171721),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF171721),
          shadowColor: Colors.blue,
          centerTitle: true,
          elevation: 0,
        ),
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<TopAnimeCubit>(
            create: ((context) => TopAnimeCubit(AnimeRepository.instance)),
          ),
          BlocProvider<AiringTodayCubit>(
            create: ((context) => AiringTodayCubit(AnimeRepository.instance)),
          ),
          BlocProvider<AnimeCubit>(
            create: ((context) => AnimeCubit(AnimeRepository.instance)),
          ),
          BlocProvider<WatchlistCubit>(
            create: ((context) => WatchlistCubit()),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}

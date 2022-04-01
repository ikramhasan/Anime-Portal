import 'package:anime_portal/src/anime/controller/airing_today_controller/airing_today_cubit.dart';
import 'package:anime_portal/src/anime/view/components/anime_horizontal_list_widget.dart';
import 'package:anime_portal/src/anime/view/see_all/see_all_page.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiringTodayList extends StatelessWidget {
  const AiringTodayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AiringTodayCubit, AiringTodayState>(
      builder: (context, state) {
        if (state.loading) {
          return const SizedBox(
            height: 222,
            child: LoadingWidget(),
          );
        } else if (state.airingToday.isNotEmpty) {
          return AnimeHorizontalListWidget(
            title: 'Airing Today',
            seeAllPressed: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SeeAllPage(
                    title: 'Airing Today',
                    animeList: state.airingToday,
                  ),
                ),
              );
            },
            animeList: state.airingToday,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/view/components/top_anime_grid_list_widget.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeCubit, AnimeState>(
      builder: (context, state) {
        if (state.recommendationsLoading) {
          return const LoadingWidget();
        } else if (state.recommendations.isNotEmpty) {
          return TopAnimeGridListWidget(animeList: state.recommendations.lock);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

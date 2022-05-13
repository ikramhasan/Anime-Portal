import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/app/converters/converters.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodesWidget extends StatelessWidget {
  const EpisodesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeCubit, AnimeState>(
      builder: (context, state) {
        if (state.episodeLoading) {
          return const LoadingWidget();
        } else if (state.episodes.isNotEmpty) {
          return ListView.builder(
            itemCount: state.episodes.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final episode = state.episodes[index];

              return ListTile(
                onTap: () {},
                title: Text(episode.title),
                subtitle: Text(
                  convertDateToHumanReadableText(episode.aired) ?? '',
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color:
                        episode.filler ? Colors.redAccent : Colors.blueAccent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(episode.filler ? 'Filler' : 'Non-filler'),
                  ),
                ),
              );
            },
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

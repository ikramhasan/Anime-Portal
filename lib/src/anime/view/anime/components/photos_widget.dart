import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/view/anime/photo_view_page.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosWidget extends StatelessWidget {
  const PhotosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeCubit, AnimeState>(
      builder: (context, state) {
        if (state.picturesLoading) {
          return const LoadingWidget();
        } else if (state.pictures.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MasonryGridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              itemCount: state.pictures.length,
              itemBuilder: (context, index) {
                final picture = state.pictures[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PhotoViewPage(
                          title: state.anime.title,
                          imageUrl: picture.large,
                        ),
                      ),
                    );
                  },
                  child: Image.network(picture.small),
                );
              },
              // gridDelegate: SliverStaggeredGridDelegateWithMaxCrossAxisExtent(
              //   maxCrossAxisExtent: 3,
              //   staggeredTileBuilder: (index) => const StaggeredTile.count(
              //     1,
              //     1,
              //   ),
              // ),
            ),
          );
          // return GridView.builder(
          //   itemCount: state.pictures.length,
          //   physics: const BouncingScrollPhysics(),
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //   ),
          //   itemBuilder: (context, index) {
          //     final picture = state.pictures[index];
          //     return InkWell(
          //       onTap: () {
          //         Navigator.of(context).push(
          //           MaterialPageRoute(
          //             builder: (context) => PhotoViewPage(
          //               title: state.anime.title,
          //               imageUrl: picture.large,
          //             ),
          //           ),
          //         );
          //       },
          //       child: Image.network(picture.small),
          //     );
          //   },
          // );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

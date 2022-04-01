import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/repository/anime_repository.dart';
import 'package:anime_portal/src/anime/view/anime/anime_page.dart';
import 'package:anime_portal/src/anime/view/components/anime_rating_bar.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    this.score,
  }) : super(key: key);

  final int id;
  final String title;
  final String imageUrl;
  final double? score;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      child: GestureDetector(
        onTap: () {
          
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BlocProvider<AnimeCubit>(
                create: ((context) => AnimeCubit(AnimeRepository.instance)),
                child: AnimePage(id: id),
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    height: 185,
                    width: double.infinity,
                    placeholder: (context, url) => const LoadingWidget(),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 185,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.transparent.withOpacity(0.0),
                        Colors.black.withOpacity(0.7),
                      ],
                      stops: const [0.7, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: AnimeRatingBar(rating: score),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

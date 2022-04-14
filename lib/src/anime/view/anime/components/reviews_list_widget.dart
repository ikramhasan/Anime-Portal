import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/view/components/anime_rating_bar.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewsListWidget extends StatelessWidget {
  const ReviewsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeCubit, AnimeState>(
      builder: (context, state) {
        if (state.reviewsLoading) {
          return const LoadingWidget();
        } else if (state.reviews.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: state.reviews.length,
              itemBuilder: (context, index) {
                final review = state.reviews[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage(
                                review.reviewer.imageUrl,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              review.reviewer.username,
                              style: const TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            AnimeRatingBar(
                              rating: review.reviewer.reviewScore.overall
                                  .toDouble(),
                            ),
                          ],
                        ),
                        const Divider(),
                        Text(
                          review.content,
                          style: const TextStyle(fontSize: 13),
                        ),
                        const Divider(),
                        Text(
                          '${review.helpfulCount} people found this review helpful',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).disabledColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

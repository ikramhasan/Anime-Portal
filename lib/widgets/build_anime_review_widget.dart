import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

buildAnimeReviewWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimeReviews(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final reviews = snapshot.data;
        return Expanded(
          child: ListView.builder(
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              final reviewer = reviews[index].reviewer;
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ListTile(
                  leading: Text(
                    reviewer.scores.overall.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.greenAccent,
                    ),
                  ),
                  title: Text(
                    reviewer.username,
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: ReadMoreText(
                    reviews[index].content,
                    style: TextStyle(fontSize: 14),
                    trimLines: 3,
                    colorClickableText: Colors.blue,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }
      return Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}

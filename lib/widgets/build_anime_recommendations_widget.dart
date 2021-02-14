import 'package:anime_portal/views/anime_page/anime_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

buildAnimeRecommendationsWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimeRecommendations(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final recommendations = snapshot.data;

        if (recommendations.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 200,
              child: Center(
                child: Text('No Data'),
              ),
            ),
          );
        }

        return Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.65,
                crossAxisCount: 3,
              ),
              itemCount: recommendations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AnimePage(malId: recommendations[index].malId),
                        ),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 125,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: CachedNetworkImage(
                                  imageUrl: recommendations[index].imageUrl,
                                  placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              recommendations[index].title,
                              maxLines: 3,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      }
      return Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}

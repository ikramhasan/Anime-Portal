import 'package:flutter/material.dart';

buildAnimeNewsWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimeNews(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final articles = snapshot.data;
        if (articles.isEmpty) {
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
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  print(articles[index].intro);
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    leading: Image.network(articles[index].imageUrl),
                    title: Text(
                      articles[index].title,
                      style: TextStyle(fontSize: 14),
                    ),
                    subtitle: Text(
                      articles[index].intro,
                      style: TextStyle(fontSize: 12),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }
      return Expanded(
        child: Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    },
  );
}

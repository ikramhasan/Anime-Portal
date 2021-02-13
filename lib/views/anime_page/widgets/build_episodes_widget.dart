import 'package:anime_portal/views/anime_page/anime_video_player.dart';
import 'package:flutter/material.dart';

buildEpisodesWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimeEpisodes(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final episodes = snapshot.data;
        return Container(
          height: 200,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: episodes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimeVideoPlayer(
                          url: episodes[index].videoUrl,
                        ),
                      ));
                },
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(episodes[index].episodeId.toString()),
                  ),
                  title: Text(episodes[index].title),
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

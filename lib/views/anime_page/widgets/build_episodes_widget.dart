import 'package:anime_portal/views/anime_page/anime_video_player.dart';
import 'package:flutter/material.dart';

buildEpisodesWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimeEpisodes(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final episodes = snapshot.data;
        return Container(
          height: episodes.length > 1 ? 200 : 20,
          child: episodes.length > 1
              ? ListView.builder(
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
                )
              : Center(
                  child: Text(
                    'No Data',
                    style: TextStyle(color: Colors.white),
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

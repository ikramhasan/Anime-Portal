import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/anime_page/anime_details.dart';
import 'package:anime_portal/views/anime_page/widgets/build_anime_characters_widget.dart';
import 'package:anime_portal/views/anime_page/widgets/build_anime_header.dart';
import 'package:anime_portal/views/anime_page/widgets/build_episodes_widget.dart';
import 'package:anime_portal/views/anime_page/widgets/build_anime_page_description.dart';

import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import 'package:expandable/expandable.dart';

class AnimePage extends StatelessWidget {
  final anime;

  const AnimePage({Key key, @required this.anime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final JikanApiService _api = JikanApiService();
    var controller = ExpandableController.of(context);

    buildAnimePictureWidget(anime, api) {
      return FutureBuilder(
        future: api.getAnimePictures(anime.malId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final pictureList = snapshot.data;
            return Container(
              height: 190,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: pictureList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Container(
                      height: 185,
                      width: 125,
                      child: Image.network(
                        pictureList[index].small,
                        fit: BoxFit.cover,
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

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: _api.getAnimeInfo(anime.malId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final anime = snapshot.data;
              _api.getAnimeCharactersStaff(anime.malId);
              print(anime);
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildAnimePageHeader(anime, context),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: buildTitleWidget(title: 'Description'),
                  ),
                  buildAnimePageDescription(anime, controller),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: buildTitleWidget(title: 'Episodes'),
                  ),
                  buildEpisodesWidget(anime, _api),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: buildTitleWidget(title: 'Characters'),
                  ),
                  buildCharactersWidget(anime, _api),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: buildTitleWidget(title: 'Pictures'),
                  ),
                  buildAnimePictureWidget(anime, _api),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: buildTitleWidget(title: 'More Info'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AnimeDetails(anime: anime),
                  ),
                ],
              );
            }
            return Container(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}

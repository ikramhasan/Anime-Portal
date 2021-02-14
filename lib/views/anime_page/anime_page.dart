import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/tab_bar_page/tab_bar_page.dart';
import 'package:anime_portal/widgets/build_anime_header.dart';
import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  final anime;

  const AnimePage({Key key, @required this.anime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final JikanApiService _api = JikanApiService();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: _api.getAnimeInfo(anime.malId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final anime = snapshot.data;
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildAnimePageHeader(anime, context),
                  TabBarPage(anime: anime, api: _api),
                  // Padding(
                  //   padding: EdgeInsets.all(16),
                  //   child: buildTitleWidget(title: 'Pictures'),
                  // ),
                  // buildAnimePictureWidget(anime, _api),
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

import 'package:anime_portal/views/anime_page/anime_page.dart';
import 'package:anime_portal/widgets/anime_rating_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ViewAllPage extends StatelessWidget {
  final animeList;
  final String appbarTitle;

  const ViewAllPage({
    Key key,
    @required this.animeList,
    @required this.appbarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            LineIcons.arrowLeft,
            color: Colors.blue,
          ),
        ),
        title: Text(appbarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.72,
          ),
          shrinkWrap: true,
          itemCount: animeList.length,
          itemBuilder: (context, index) {
            final anime = animeList[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimePage(malId: anime.malId),
                    ),
                  );
                },
                child: Container(
                  height: 130,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 125,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: CachedNetworkImage(
                                imageUrl: anime.imageUrl,
                                placeholder: (context, url) => Center(
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) => Center(
                                  child: Icon(Icons.error),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 125,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                    begin: FractionalOffset.topCenter,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      Colors.transparent.withOpacity(0.0),
                                      Colors.black.withOpacity(0.5),
                                    ],
                                    stops: [
                                      0.7,
                                      1.0
                                    ])),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: AnimeRatingBar(
                              rating: anime.score,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            anime.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

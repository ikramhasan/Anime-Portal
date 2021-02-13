import 'package:anime_portal/views/anime_page/anime_page.dart';
import 'package:anime_portal/widgets/anime_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnimeListPage extends StatelessWidget {
  final animeList;

  const AnimeListPage({Key key, @required this.animeList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final date = DateFormat.yMMMMd('en_US');
    return Scaffold(
      body: ListView.builder(
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          String title = animeList[index].title;
          try {
            title = title.substring(0, 30);
          } catch (e) {}
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimePage(anime: animeList[index]),
                    ));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimeCachedImage(anime: animeList[index]),
                  SizedBox(width: 8),
                  Container(
                    height: 185,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          date
                              .format(
                                DateTime.parse(animeList[index].startDate),
                              )
                              .toString(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 200,
                          child: Text(
                            animeList[index].synopsis,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

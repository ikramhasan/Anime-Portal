import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

buildCharactersWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimeCharactersStaff(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final characterList = snapshot.data.characters;
        api.getCharacterInfo(characterList[0].malId).then((value) {
          print(value);
        });
        return Container(
          padding: const EdgeInsets.only(left: 16),
          height: 150,
          child: ListView.builder(
            itemCount: characterList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
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
                          height: 100,
                          width: 90,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: CachedNetworkImage(
                              imageUrl: characterList[index].imageUrl,
                              placeholder: (context, url) => Center(
                                child: CircularProgressIndicator(),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          characterList[index]
                              .name
                              .replaceFirst(RegExp(', '), '\n'),
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }
      return Container(
        height: 200,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    },
  );
}

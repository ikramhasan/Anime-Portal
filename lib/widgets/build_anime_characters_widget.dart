import 'package:anime_portal/views/character_details_page/character_details_page.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

buildCharactersWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimeCharactersStaff(anime.malId),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final characterList = snapshot.data.characters;

        if (characterList.isEmpty) {
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
                childAspectRatio: 0.7,
                crossAxisCount: 3,
              ),
              itemCount: characterList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharacterDetailsPage(
                            characterId: characterList[index].malId,
                          ),
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
                            Stack(
                              children: [
                                Container(
                                  height: 125,
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
                                Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: Container(
                                    height: 12,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: characterList[index].role != null
                                        ? Text(
                                            ' ${characterList[index].role} ',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          )
                                        : Container(),
                                  ),
                                ),
                              ],
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
                  ),
                );
              },
            ),
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


// SingleChildScrollView(
//               child: Column(
//                 children: [
//                   ...characterList.map((character) {
//                     return Container(
//                       height: 150,
//                       child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               height: 125,
//                               width: 90,
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(3),
//                                 child: CachedNetworkImage(
//                                   imageUrl: character.imageUrl,
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(),
//                                   ),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             Column(
//                               children: [
//                                 Text(
//                                   character.name.replaceFirst(RegExp(','), ''),
//                                   style: TextStyle(fontSize: 12),
//                                 ),
//                                 Text(
//                                   character.role,
//                                   style: TextStyle(fontSize: 12),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }).toList(),
//                 ],
//               ),
//             ),
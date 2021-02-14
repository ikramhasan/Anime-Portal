import 'package:anime_portal/services/api_service.dart';
import 'package:flutter/material.dart';

buildAnimePictureWidget({
  @required int id,
  @required JikanApiService api,
  @required bool isCharacter,
}) {
  return FutureBuilder(
    future: isCharacter ? api.getCharacterPictures(id) : api.getAnimePictures(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final pictureList = snapshot.data;
        return Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 2,
                ),
                shrinkWrap: true,
                itemCount: pictureList.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.network(
                      pictureList[index].large,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
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

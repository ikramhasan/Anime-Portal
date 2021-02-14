import 'package:flutter/material.dart';

buildAnimePictureWidget(anime, api) {
  return FutureBuilder(
    future: api.getAnimePictures(anime.malId),
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

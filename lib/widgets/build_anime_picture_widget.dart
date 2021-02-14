import 'package:flutter/material.dart';

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

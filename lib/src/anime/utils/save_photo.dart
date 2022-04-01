import 'package:anime_portal/src/app/model/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:gallery_saver/gallery_saver.dart';

Future<Option<Failure>> savePhoto(String url) async {
  final result = await GallerySaver.saveImage(
    url,
    albumName: 'Anime Portal',
  );

  if (result != null && result) {
    return none();
  } else {
    return some(const Failure(message: 'Could not save photo to device'));
  }
}

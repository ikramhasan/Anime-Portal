import 'package:anime_portal/src/anime/utils/save_photo.dart';
import 'package:flutter/material.dart';

class PhotoViewPage extends StatelessWidget {
  const PhotoViewPage({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: InteractiveViewer(
        child: Image.network(imageUrl),
      ),
      floatingActionButton: InkWell(
        onTap: () async {
          final photoSaveStatus = await savePhoto(imageUrl);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                photoSaveStatus.fold(
                  () => 'Photo saved to gallery',
                  (failure) => failure.message,
                ),
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.blueAccent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.save),
                SizedBox(width: 8),
                Text('Save to gallery'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AnimeVideoPlayer extends StatefulWidget {
  final String url;

  const AnimeVideoPlayer({Key key, @required this.url}) : super(key: key);

  @override
  _AnimeVideoPlayerState createState() => _AnimeVideoPlayerState();
}

class _AnimeVideoPlayerState extends State<AnimeVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: widget.url,
      ),
    );
  }
}

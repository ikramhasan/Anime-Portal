import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/view_all_page/view_all_page.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AiringTodayPage extends StatelessWidget {
  final JikanApiService api;

  const AiringTodayPage({Key key, @required this.api}) : super(key: key);

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
        title: Text('Airing Today'),
      ),
      body: ViewAllPage(api: api, widgetType: 'airing'),
    );
  }
}

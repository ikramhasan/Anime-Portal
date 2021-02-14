import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/anime_list_page/anime_list_page.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';
import 'package:line_icons/line_icons.dart';

class SearchPage extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
          appBarTheme: AppBarTheme(
            color: Theme.of(context).canvasColor,
            shadowColor: Colors.blue,
          ),
          textTheme: TextTheme(),
        );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          LineIcons.undo,
          color: Colors.blue,
        ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          color: Colors.blue,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final JikanApiService _api = JikanApiService();

    return FutureBuilder(
      future: _api.search(query, SearchType.anime),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            query.isNotEmpty) {
          return AnimeListPage(animeList: snapshot.data);
        }
        return ListTile(
          leading: Icon(
            LineIcons.search,
            color: Colors.blue,
          ),
          title: query.isEmpty
              ? Text('Type something in the field...')
              : Text('Searching. Please wait...'),
        );
      },
    );
  }
}

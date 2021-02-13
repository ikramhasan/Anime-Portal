import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/anime_list_page/anime_list_page.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';
import 'package:line_icons/line_icons.dart';

class SearchPage extends SearchDelegate {
  final animeRecommendations = [
    'Attack on Titan',
    'Death Note',
    'Dragon Ball',
    'Detective Conan',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          LineIcons.times,
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
    // TODO: implement buildResults
    // throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final JikanApiService _api = JikanApiService();

    return FutureBuilder(
      future: _api.search(query, SearchType.anime),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AnimeListPage(animeList: snapshot.data);
        }
        return ListTile(
          leading: Icon(
            LineIcons.search,
            color: Colors.blue,
          ),
          title: Text('Type something in the field...'),
        );
      },
    );
  }
}

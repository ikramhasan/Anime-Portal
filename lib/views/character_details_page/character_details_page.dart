import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/character_details_page/character_tab_bar_page.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';
import 'package:line_icons/line_icons.dart';

class CharacterDetailsPage extends StatelessWidget {
  final int characterId;

  const CharacterDetailsPage({
    Key key,
    @required this.characterId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final JikanApiService _api = JikanApiService();

    buildCharacterHeader(character) {
      return Stack(
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              character.imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.transparent.withOpacity(0.0),
                  Color(0xFF171721).withOpacity(1.0),
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  character.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 34,
            left: 16,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                LineIcons.arrowLeft,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: _api.getCharacterInfo(characterId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final Character character = snapshot.data;
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildCharacterHeader(character),
                  CharacterTabBarPage(character: character, api: _api),
                ],
              );
            }
            return Container(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}

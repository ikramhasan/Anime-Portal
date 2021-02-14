import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/build_anime_picture_widget.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';

class CharacterTabBarPage extends StatefulWidget {
  final Character character;
  final JikanApiService api;

  const CharacterTabBarPage(
      {Key key, @required this.character, @required this.api})
      : super(key: key);

  @override
  _CharacterTabBarPageState createState() => _CharacterTabBarPageState();
}

class _CharacterTabBarPageState extends State<CharacterTabBarPage>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    buildCharacterDescriptionColumn() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: buildTitleWidget(title: 'Decription'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.character.about.replaceAll(RegExp('\n'), '\n'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: buildTitleWidget(title: 'Animeography'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              height: 215,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: widget.character.animeography.length,
                itemBuilder: (context, index) {
                  return FutureBuilder(
                      future: widget.api.getAnimeInfo(
                          widget.character.animeography[index].malId),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: AnimeCard(anime: snapshot.data),
                          );
                        }
                        return Container(
                          height: 215,
                          width: 125,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      });
                },
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: PreferredSize(
                child: AppBar(
                  leading: Container(),
                  shadowColor: Colors.blue,
                  bottom: TabBar(
                    tabs: [
                      Text('Description'),
                      Text('Pictures'),
                    ],
                    controller: _tabController,
                    indicatorColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.white,
                    isScrollable: true,
                  ),
                ),
                preferredSize: Size.fromHeight(20),
              ),
              body: Container(
                child: TabBarView(
                  children: [
                    buildCharacterDescriptionColumn(),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: buildTitleWidget(title: 'Pictures'),
                        ),
                        buildAnimePictureWidget(
                          id: widget.character.malId,
                          api: widget.api,
                          isCharacter: true,
                        ),
                      ],
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/anime_page/anime_details.dart';
import 'package:anime_portal/widgets/anime_news_widget.dart';
import 'package:anime_portal/widgets/build_anime_recommendations_widget.dart';
import 'package:anime_portal/widgets/build_anime_characters_widget.dart';
import 'package:anime_portal/widgets/build_anime_page_description.dart';
import 'package:anime_portal/widgets/build_anime_picture_widget.dart';
import 'package:anime_portal/widgets/build_anime_review_widget.dart';
import 'package:anime_portal/widgets/build_anime_stats_widget.dart';
import 'package:anime_portal/widgets/build_episodes_widget.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  final anime;
  final JikanApiService api;

  const TabBarPage({Key key, @required this.anime, @required this.api})
      : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  buildDescriptionColumn() {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: buildTitleWidget(title: 'Description'),
          ),
          buildAnimePageDescription(widget.anime),
          Padding(
            padding: EdgeInsets.all(16),
            child: buildTitleWidget(title: 'More Info'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AnimeDetails(anime: widget.anime),
          ),
        ],
      ),
    );
  }

  buildCharacterColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: buildTitleWidget(title: 'Characters'),
        ),
        buildCharactersWidget(widget.anime, widget.api),
      ],
    );
  }

  buildEpisodesColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: buildTitleWidget(title: 'Episodes'),
        ),
        buildEpisodesWidget(widget.anime, widget.api),
      ],
    );
  }

  buildPictureColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: buildTitleWidget(title: 'Pictures'),
        ),
        buildAnimePictureWidget(id: widget.anime.malId,api: widget.api, isCharacter: false,),
      ],
    );
  }

  buildNewsColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: buildTitleWidget(title: 'News'),
        ),
        buildAnimeNewsWidget(widget.anime, widget.api),
      ],
    );
  }

  buildRecommendationsColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: buildTitleWidget(title: 'Recommendations'),
        ),
        buildAnimeRecommendationsWidget(widget.anime, widget.api),
      ],
    );
  }

  buildReviewColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: buildTitleWidget(title: 'Reviews'),
        ),
        buildAnimeReviewWidget(widget.anime, widget.api),
      ],
    );
  }

  buildAnimeStatsColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: buildTitleWidget(title: 'Statistics'),
        ),
        buildAnimeStatsWidget(widget.anime, widget.api),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: DefaultTabController(
            length: 8,
            child: Scaffold(
              appBar: PreferredSize(
                child: AppBar(
                  leading: Container(),
                  shadowColor: Colors.blue,
                  bottom: TabBar(
                    tabs: [
                      Text('Description'),
                      Text('Episodes'),
                      Text('Characters'),
                      Text('Pictures'),
                      Text('News'),
                      Text('Recommendations'),
                      Text('Reviews'),
                      Text('Stats'),
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
                    buildDescriptionColumn(),
                    buildEpisodesColumn(),
                    buildCharacterColumn(),
                    buildPictureColumn(),
                    buildNewsColumn(),
                    buildRecommendationsColumn(),
                    buildReviewColumn(),
                    buildAnimeStatsColumn(),
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

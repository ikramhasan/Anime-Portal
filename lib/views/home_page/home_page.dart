import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/airing_this_season_page/airing_this_season_page.dart';
import 'package:anime_portal/views/airing_today_page/airing_today_page.dart';
import 'package:anime_portal/views/home_page/home_page_drawer.dart';
import 'package:anime_portal/views/home_page/widgets/build_airing_this_season_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_airing_today_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_trending_today_widget.dart';
import 'package:anime_portal/views/trending_now_page/trending_now_page.dart';
import 'package:anime_portal/views/view_all_page/view_all_page.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:anime_portal/views/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  final JikanApiService _api = JikanApiService();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    int weekday = DateTime.now().weekday;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Anime Portal'),
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState.openDrawer();
          },
          splashColor: Colors.blue.withOpacity(0.5),
          child: Icon(
            LineIcons.stream,
            color: Colors.blue,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              splashColor: Colors.blue.withOpacity(0.5),
              child: Icon(
                LineIcons.search,
                color: Colors.blue,
              ),
              onTap: () {
                showSearch(
                  context: context,
                  delegate: SearchPage(),
                );
              },
            ),
          ),
        ],
      ),
      drawer: HomePageDrawer(api: _api),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16, top: 16, bottom: 34),
          child: Column(
            children: [
              buildTitleWidget(
                title: 'Trending Now',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrendingNowPage(api: _api),
                    ),
                  );
                },
              ),
              SizedBox(height: 8),
              buildTrendingListViewWidget(_api),
              SizedBox(height: 8),
              buildTitleWidget(
                title: 'Airing Today',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AiringTodayPage(api: _api),
                    ),
                  );
                },
              ),
              buildAiringTodayWidget(weekday, _api),
              SizedBox(height: 8),
              buildTitleWidget(
                title: 'Airing This Season',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AiringThisSeasonPage(api: _api),
                    ),
                  );
                },
              ),
              buildAiringThisSeasonWidget(_api),
            ],
          ),
        ),
      ),
    );
  }
}

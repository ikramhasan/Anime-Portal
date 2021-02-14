import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/home_page/widgets/build_airing_this_season_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_airing_today_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_trending_today_widget.dart';
import 'package:anime_portal/views/view_all_page/view_all_page.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:anime_portal/views/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  final JikanApiService _api = JikanApiService();

  @override
  Widget build(BuildContext context) {
    int weekday = DateTime.now().weekday;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16, top: 34),
          child: Column(
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // TODO: Implement drawer here
                    },
                    splashColor: Colors.blue.withOpacity(0.5),
                    child: Icon(
                      LineIcons.stream,
                      color: Colors.blue,
                    ),
                  ),
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
              SizedBox(height: 8),
              buildTitleWidget(
                title: 'Trending Now',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          shadowColor: Colors.blue,
                          leading: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              LineIcons.arrowLeft,
                              color: Colors.blue,
                            ),
                          ),
                          title: Text('Trending Now'),
                        ),
                        body: ViewAllPage(api: _api, widgetType: 'trending'),
                      ),
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
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          shadowColor: Colors.blue,
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
                        body: ViewAllPage(api: _api, widgetType: 'airing'),
                      ),
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
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          shadowColor: Colors.blue,
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
                        body: ViewAllPage(api: _api, widgetType: 'season'),
                      ),
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

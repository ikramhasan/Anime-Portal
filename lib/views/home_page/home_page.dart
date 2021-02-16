import 'package:anime_portal/controllers/auth_controller.dart';
import 'package:anime_portal/controllers/user_controller.dart';
import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/services/database.dart';
import 'package:anime_portal/views/home_page/home_page_drawer.dart';
import 'package:anime_portal/views/home_page/widgets/build_airing_this_season_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_airing_today_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_finished_watching_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_trending_today_widget.dart';
import 'package:anime_portal/views/home_page/widgets/build_watchlist_widget.dart';
import 'package:anime_portal/views/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  final JikanApiService _api = JikanApiService();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final authController = Get.find<AuthController>();
  final database = Database();

  @override
  Widget build(BuildContext context) {
    int weekday = DateTime.now().weekday;
    final user = Get.find<UserController>().user;

    return FutureBuilder(
      future: authController.getUser,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          try {
            database.getUserFromDatabase(snapshot.data.uid);
          } catch (e) {
            print("User has not logged in");
          }
        }

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
              InkWell(
                splashColor: Colors.blue.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(
                    LineIcons.search,
                    color: Colors.blue,
                  ),
                ),
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: SearchPage(),
                  );
                },
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
                  user.watchlist != null
                      ? buildWatchlistWidget(
                          api: _api,
                          context: context,
                          user: user,
                        )
                      : Container(),
                  buildTrendingListViewWidget(
                    api: _api,
                    context: context,
                  ),
                  buildAiringTodayWidget(
                    weekday: weekday,
                    api: _api,
                    context: context,
                  ),
                  buildAiringThisSeasonWidget(
                    api: _api,
                    context: context,
                  ),
                  user.finishedWatching != null
                      ? buildFinishedWatchingWidget(
                          api: _api,
                          context: context,
                          user: user,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

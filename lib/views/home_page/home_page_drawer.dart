import 'package:anime_portal/controllers/auth_controller.dart';
import 'package:anime_portal/controllers/user_controller.dart';
import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/login_page/login_page.dart';
import 'package:anime_portal/views/view_all_page/view_all_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:anime_portal/controllers/anime_controller.dart';

class HomePageDrawer extends StatelessWidget {
  final JikanApiService api;

  HomePageDrawer({Key key, @required this.api}) : super(key: key);

  final user = Get.find<UserController>().user;

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final user = Get.find<UserController>().user;
    final animeController = Get.find<AnimeController>();

    buildDrawerHeader() {
      return DrawerHeader(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            authController.user == null
                ? InkWell(
                    onTap: () {
                      Get.to(LoginPage());
                    },
                    child: Row(
                      children: [
                        Icon(LineIcons.userSecret, size: 25),
                        SizedBox(width: 8),
                        Text('anonymous'),
                      ],
                    ),
                  )
                : Text(user.name),
            authController.user == null
                ? InkWell(
                    onTap: () {
                      Get.to(LoginPage());
                    },
                    child: Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            'Login',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            LineIcons.alternateSignIn,
                            size: 25,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      authController.signout();
                    },
                    child: Container(
                      height: 25,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            'Signout',
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      );
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100,
            child: buildDrawerHeader(),
          ),
          ListTile(
            title: Text('Trending Now'),
            onTap: () {
              //Get.to(TrendingNowPage(api: api));
              Get.to(
                ViewAllPage(
                    animeList: animeController.trendingList,
                    appbarTitle: 'Trending Now'),
              );
            },
          ),
          Divider(thickness: 1),
          ListTile(
            title: Text('Airing Today'),
            onTap: () {
              //Get.to(AiringTodayPage(api: api));
            },
          ),
          Divider(thickness: 1),
          ListTile(
            title: Text('Airing This Season'),
            onTap: () {
              //Get.to(AiringThisSeasonPage(api: api));
            },
          ),
          Divider(thickness: 1),
          user.watchlist != null
              ? ListTile(
                  title: Text('My Watchlist'),
                  onTap: () {
                    // TODO: Navigate to page
                    // Get.to(FinishedWatchingPage(api: api));
                  },
                )
              : Container(),
          user.watchlist != null ? Divider(thickness: 1) : Container(),
          user.finishedWatching != null
              ? ListTile(
                  title: Text('Finished Watching'),
                  onTap: () {
                    // TODO: Navigate to page
                    // Get.to(FinishedWatchingPage(api: api));
                  },
                )
              : Container(),
          user.finishedWatching != null ? Divider(thickness: 1) : Container(),
        ],
      ),
    );
  }
}

import 'package:anime_portal/controllers/auth_controller.dart';
import 'package:anime_portal/controllers/user_controller.dart';
import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/airing_this_season_page/airing_this_season_page.dart';
import 'package:anime_portal/views/airing_today_page/airing_today_page.dart';
import 'package:anime_portal/views/login_page/login_page.dart';
import 'package:anime_portal/views/trending_now_page/trending_now_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class HomePageDrawer extends StatelessWidget {
  final JikanApiService api;

  HomePageDrawer({Key key, @required this.api}) : super(key: key);

  final user = Get.find<UserController>().user;

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final user = Get.find<UserController>().user;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100,
            child: DrawerHeader(
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
            ),
          ),
          ListTile(
            title: Text('Trending Now'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TrendingNowPage(api: api),
                ),
              );
            },
          ),
          Divider(thickness: 1),
          ListTile(
            title: Text('Airing Today'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AiringTodayPage(api: api),
                ),
              );
            },
          ),
          Divider(thickness: 1),
          ListTile(
            title: Text('Airing This Season'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AiringThisSeasonPage(api: api),
                ),
              );
            },
          ),
          Divider(thickness: 1),
        ],
      ),
    );
  }
}

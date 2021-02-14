import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/airing_this_season_page/airing_this_season_page.dart';
import 'package:anime_portal/views/airing_today_page/airing_today_page.dart';
import 'package:anime_portal/views/trending_now_page/trending_now_page.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePageDrawer extends StatelessWidget {
  final JikanApiService api;

  const HomePageDrawer({Key key, @required this.api}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Theme.of(context).canvasColor,
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel'),
                              ),
                            ],
                            title: Text('Alert !'),
                            content: Text(
                              'Login feature not yet implemented. Please wait.',
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(LineIcons.userSecret, size: 25),
                        SizedBox(width: 8),
                        Text('anonymous'),
                      ],
                    ),
                  ),
                  Icon(LineIcons.alternateSignIn, size: 25),
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

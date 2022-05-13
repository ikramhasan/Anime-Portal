import 'package:anime_portal/src/app/helpers/launch_mail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 20, 20, 34),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Anime Portal',
                      style: GoogleFonts.cinzel(
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'by Ikram Hasan',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: const Text(
                'Report a bug!',
              ),
              onTap: () {
                sendMail('General');
              },
            ),
            const Divider(),
            ListTile(
              leading: Icon(
                CupertinoIcons.person_alt_circle,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: const Text(
                'About me',
              ),
              onTap: () {
                launchURL('https://www.ikramhasan.com/');
              },
            ),
            const Divider(),
            ListTile(
              onTap: () {
                launchURL(
                  'https://play.google.com/store/search?q=pub%3AIkram%20Hasan&c=apps',
                );
              },
              leading: Icon(
                CupertinoIcons.square_stack_3d_down_right,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: const Text('More Apps'),
            ),
            const Divider(),
          ],
        ),
      );
  }
}
import 'package:url_launcher/url_launcher.dart';

Future<bool> launchURL(String url) async {
  return await canLaunchUrl(Uri.parse(url))
      ? await launchUrl(Uri.parse(url))
      : throw 'Could not launch $url';
}

Future<bool> sendMail(String errorCode) async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'ikramhasan.dev@gmail.com',
    queryParameters: {
      'subject': 'Bug!(Anime Portal), Error code: $errorCode',
    },
  );
  return launchUrl(_emailLaunchUri);
}

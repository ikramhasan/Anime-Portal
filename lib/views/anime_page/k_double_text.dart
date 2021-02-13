import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  final String text1;
  final String text2;

  const DoubleText({
    Key key,
    @required this.text1,
    @required this.text2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$text1: ',
        style: TextStyle(
          color: Colors.grey,
        ),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(color: Colors.blue,),
          ),
        ],
      ),
    );
  }
}

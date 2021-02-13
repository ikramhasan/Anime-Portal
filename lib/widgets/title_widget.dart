import 'package:flutter/material.dart';

buildTitleWidget({@required String title, Function onPressed}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: 60,
            child: Divider(
              thickness: 2,
            ),
          ),
        ],
      ),
      onPressed != null ? TextButton(
        onPressed: onPressed,
        child: Text(
          'See All',
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue,
          ),
        ),
      ) : Container(),
    ],
  );
}

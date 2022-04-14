import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class APBackButton extends StatelessWidget {
  const APBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.arrow_circle_left_outlined,
              size: 32,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}

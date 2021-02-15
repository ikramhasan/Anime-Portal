import 'package:flutter/material.dart';

buildTextInputField({
      @required String hintText,
      @required TextEditingController textController,
    }) {
      return Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.blueGrey[900],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
      );
    }
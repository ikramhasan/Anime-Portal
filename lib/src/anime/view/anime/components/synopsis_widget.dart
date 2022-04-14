import 'package:flutter/material.dart';

class SynopsisWidget extends StatelessWidget {
  const SynopsisWidget({Key? key, this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Text(
        text ?? 'No synopsis available for this anime.',
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}

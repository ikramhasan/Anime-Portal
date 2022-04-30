import 'package:anime_portal/src/anime/view/anime/components/synopsis_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: SynopsisWidget(
          text: 'test synopsis',
        ),
      ),
    );

    final titleFinder = find.text('test synopsis');

    expect(titleFinder, findsOneWidget);
  });
}

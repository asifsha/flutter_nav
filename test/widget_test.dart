// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:f_nav/main.dart';

void main() {
  testWidgets('Drawer App main smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    final  drawer = find.byTooltip('Open navigation menu');
    expect(drawer, findsWidgets);
    await tester.tap(drawer) ;
    await tester.pump();


    await tester.tap(find.byType(ListTile).at(0));
    await tester.tap(find.byType(ListTile).at(1));
    await tester.tap(find.byType(ListTile).at(2));
    await tester.tap(find.byType(ListTile).at(3));
    await tester.tap(find.byType(ListTile).at(4));


    await tester.pump();

  });
}

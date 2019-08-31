import 'package:flutter/material.dart';
import 'routes/Routes.dart';
import 'modules/chartspage.dart';
import 'modules/homepage.dart';
import 'modules/timelinepage.dart';
import 'modules/mapspage.dart';
import 'modules/calendarpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: HomePage(),
      routes: {
        Routes.home: (context) => HomePage(),
        Routes.charts: (context) => ChartsPage.withSampleData(),
        Routes.timeline: (context) => TimelinePage(),
        Routes.map: (context) => MapsPage(),
        Routes.calendar: (context) => CalendarPage(),
      },
    );
  }
}

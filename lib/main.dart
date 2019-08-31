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
      theme : ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
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

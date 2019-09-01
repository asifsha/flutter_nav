import 'package:flutter/material.dart';
import '../routes/Routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer (
         // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.pink[900],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.home);
              },
            ),
            ListTile(
              title: Text('Charts'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.charts);
              },
            ),
            ListTile(
              title: Text('Timeline'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.timeline);
              },
            ),
            ListTile(
              title: Text('Map'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.map);
              },
            ),
            ListTile(
              title: Text('Calendar'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.calendar);
              },
            ),
          ],
        ),
      );
  }
}

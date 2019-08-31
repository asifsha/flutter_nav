import 'package:flutter/material.dart';
import '../widget/drawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(child: Text('Drawer Demo!')),
      );
  }

}
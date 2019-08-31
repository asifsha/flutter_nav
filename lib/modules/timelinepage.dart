import 'package:flutter/material.dart';
import '../widget/drawer.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelinePage extends StatelessWidget {
  static const String routeName = '/timeline';

  final List<TimelineModel> items = [
    TimelineModel(
        Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('09:00 '),
                  subtitle: Text('Stand up'),
                ),
                Text('Stand up meeting abour flutter projects')
              ],
            ),
          ),
        ),
        position: TimelineItemPosition.left,
        iconBackground: Colors.greenAccent,
        icon: Icon(Icons.assistant)),
    TimelineModel(
        Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('10:00'),
                  subtitle: Text('PO meeting'),
                ),
                Text('PO meeting about product development')
              ],
            ),
          ),
        ),
        position: TimelineItemPosition.random,
        iconBackground: Colors.lightBlue,
        icon: Icon(Icons.people)),
    TimelineModel(
        Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('12:00'),
                  subtitle: Text('Lunch'),
                ),
                Text('')
              ],
            ),
          ),
        ),
        position: TimelineItemPosition.random,
        iconBackground: Colors.amber,
        icon: Icon(Icons.hourglass_full)),
    TimelineModel(
        Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('14:00'),
                  subtitle: Text('Retro & Sprint Planning'),
                ),
                Text('Retro and Sprint planning meeting')
              ],
            ),
          ),
        ),
        position: TimelineItemPosition.random,
        iconBackground: Colors.purpleAccent,
        icon: Icon(Icons.all_inclusive)),
    TimelineModel(
        Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('16:00'),
                  subtitle: Text('Code Review'),
                ),
                Text('Code review for dev team')
              ],
            ),
          ),
        ),
        position: TimelineItemPosition.random,
        iconBackground: Colors.tealAccent,
        icon: Icon(Icons.edit)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("Time line"),
      ),
      body: new Timeline(children: items, position: TimelinePosition.Left),
    );
  }
}

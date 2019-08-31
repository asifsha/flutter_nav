import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import '../widget/drawer.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;

class CalendarPage extends StatelessWidget {
  static const String routeName = '/calendar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: CalendarCarousel<Event>(
//          onDayPressed: (DateTime date) {
//            this.setState(() => _currentDate = date);
//          },
          weekendTextStyle: TextStyle(
            color: Colors.red,
          ),
          thisMonthDayBorderColor: Colors.grey,
//      weekDays: null, /// for pass null when you do not want to render weekDays
//      headerText: Container( /// Example for rendering custom header
//        child: Text('Custom Header'),
//      ),
          weekFormat: false,
          height: 420.0,
          daysHaveCircularBorder: null, /// null for not rendering any border, true for circular border, false for rectangular border
        ),
      ),
    );
  }

}
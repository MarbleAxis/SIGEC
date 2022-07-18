import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class Agenda extends StatefulWidget {
  const Agenda({ Key? key }) : super(key: key);

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGEC'),
        backgroundColor:Color.fromARGB(255, 3, 8, 58)
      
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
      padding: const EdgeInsets.fromLTRB(150, 50, 150, 0),
      child: SfCalendar(
          view: CalendarView.month
        ),
      )
    );
  }
}

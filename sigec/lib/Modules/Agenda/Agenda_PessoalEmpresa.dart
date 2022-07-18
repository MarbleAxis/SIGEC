import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class AgendaEmpresa extends StatefulWidget {
  const AgendaEmpresa({ Key? key }) : super(key: key);

  @override
  State<AgendaEmpresa> createState() => _AgendaEmpresaState();
}

class _AgendaEmpresaState extends State<AgendaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

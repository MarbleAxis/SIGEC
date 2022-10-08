import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class AgendaFuncionarios extends StatefulWidget {
  const AgendaFuncionarios({ Key? key }) : super(key: key);

  @override
  State<AgendaFuncionarios> createState() => _AgendaFuncionariosState();
}

class _AgendaFuncionariosState extends State<AgendaFuncionarios> {
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

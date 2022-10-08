import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class AgendaCliente extends StatefulWidget {
  const AgendaCliente({ Key? key }) : super(key: key);

  @override
  State<AgendaCliente> createState() => _AgendaClienteState();
}

class _AgendaClienteState extends State<AgendaCliente> {
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

import 'package:flutter/material.dart';
import 'package:sigec/Modules/GerenciarHorario/Pages/TodosHorarios.dart';
import 'Escolherservicos.dart';

class Agendar extends StatefulWidget {
  const Agendar({ Key? key }) : super(key: key);

  @override
  State<Agendar> createState() => _AgendarState();
}

class _AgendarState extends State<Agendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('SIGEC'),
        backgroundColor:Color.fromARGB(255, 3, 8, 58)
      
      ),
      body: ListView(
      children: [
        Padding(
        padding: EdgeInsets.fromLTRB(600, 50, 600, 0),
        child:
        Text(
            'SIGEC',
            style: const TextStyle(fontSize: 55),
        ),
        ),

        Padding(
        padding: EdgeInsets.fromLTRB(620, 5, 620, 0),
        child:
        Text(
            'Clientes',
            style: const TextStyle(fontSize: 28),
        ),
        ),

        Padding(
        padding: EdgeInsets.fromLTRB(200, 70, 200, 20),
        child: ElevatedButton(
          onPressed: (){
            final rota = MaterialPageRoute(builder: (context) => const Agenda());
      
            Navigator.of(context).push(rota);
          },
          child: Text(
            'Ir para Agenda',
            style: const TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(500, 50),
            primary: Color.fromARGB(255, 1, 44, 45),
          ),
        ),
        ),

        Padding(
        padding: EdgeInsets.fromLTRB(200, 0, 200, 0),
        child: ElevatedButton(
          onPressed: () {
            final rota = MaterialPageRoute(builder: (context) => const TelaServicos());
      
            Navigator.of(context).push(rota);
          },
          child: Text(
            'Escolher Serviço',
            style: const TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(500, 50),
            primary: Color.fromARGB(255, 1, 44, 45),
          ),
        ),
        ),

        Padding(
        padding: EdgeInsets.fromLTRB(200, 20, 200, 200),
        child: ElevatedButton(
          onPressed: (){},
          child: Text(
            'Horários Agendados',
            style: const TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(500, 50),
            primary: Color.fromARGB(255, 1, 44, 45),
          ),
        ),
        ),
      ],
      ),        
    );
  }
}

import 'package:flutter/material.dart';

class TelaServicos extends StatefulWidget {
  const TelaServicos({Key? key}) : super(key: key);

  @override
  State<TelaServicos> createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGEC'),
        backgroundColor:Color.fromARGB(255, 3, 8, 58)
    ),

    body: ListView
    (children: [
      Padding(
        padding: EdgeInsets.fromLTRB(600, 50, 600, 0),
        child:
        Text(
            'SIGEC',
            style: const TextStyle(fontSize: 55),
        ),
        ),

        Padding(
        padding: EdgeInsets.fromLTRB(570, 5, 500, 0),
        child:
        Text(
            'Escolher Serviço:',
            style: const TextStyle(fontSize: 28),
        ),
        ),

      Padding(padding: EdgeInsets.fromLTRB(400, 30, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Manicure", 
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Podologia", 
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Barbearia", 
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Nutricionista", 
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Clínico Geral", 
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Dentista", 
      
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Radiografia", 
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 0),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Endoscopia", 
        style: const TextStyle(fontSize: 18),)),
      ),

      Padding(padding: EdgeInsets.fromLTRB(400, 20, 400, 40),
        child: TextButton(style: 
        TextButton.styleFrom(backgroundColor: Color(0xff303030), minimumSize: const Size(100, 50)), 
        onPressed: (){}, 
        child: Text ("Fisioterapia", 
        style: const TextStyle(fontSize: 18),)),
      ),
    ],    
    )

    

    );
  }
}
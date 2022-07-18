import 'package:flutter/material.dart';

import 'cliente_page.dart';
import 'empresa_page.dart';
import 'funcionario_page.dart';

class FormaLogin extends StatefulWidget {
  const FormaLogin({Key? key}) : super(key: key);

  @override
  State<FormaLogin> createState() => _FormaLoginState();
}

class _FormaLoginState extends State<FormaLogin> {
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
        padding: EdgeInsets.fromLTRB(200, 70, 200, 20),
        child: ElevatedButton(
          onPressed: (){
            final rota = MaterialPageRoute(
            builder: (context) => const EmpresaPage());

            Navigator.of(context).push(rota);
          },
          child: Text(
            'Cadastrar pela empresa',
            style: const TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(500, 50),
            primary: Color.fromARGB(255, 1, 44, 45),
          ),
        ),
        ),

        Padding(
        padding: EdgeInsets.fromLTRB(200, 70, 200, 20),
        child: ElevatedButton(
          onPressed: (){
            final rota = MaterialPageRoute(
            builder: (context) => const FuncionarioPage());

        Navigator.of(context).push(rota);
          },
          child: Text(
            'Cadastrar pelo funcionário',
            style: const TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(500, 50),
            primary: Color.fromARGB(255, 1, 44, 45),
          ),
        ),
        ),

        Padding(
        padding: EdgeInsets.fromLTRB(200, 70, 200, 20),
        child: ElevatedButton(
          onPressed: (){
            final rota = MaterialPageRoute(
          builder: (context) => const ClientePage());

        Navigator.of(context).push(rota);
          },
          child: Text(
            'Cadastrar pelo cliente',
            style: const TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(500, 50),
            primary: Color.fromARGB(255, 1, 44, 45),
          ),
        ),
        ),

      

    ],    
    )

    

    );
  }
}
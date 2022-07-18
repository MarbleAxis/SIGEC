import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({ Key? key }) : super(key: key);

  @override
  State<UsuarioPage> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conta de Usuário'),
        backgroundColor:Color.fromARGB(255, 3, 8, 58),
      ),
      body: ListView(
        children: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          },child: Text('VOLTAR'))
        ],
      ),
    );
  }
}
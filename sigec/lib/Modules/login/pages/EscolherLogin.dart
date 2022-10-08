import 'package:flutter/material.dart';
import 'package:sigec/Modules/usuario/usuariosClientes/pages/cliente_page.dart';
import 'package:sigec/Shared/components/button_form/button_form.dart';
import '../../usuario/usuariosEmpresas/pages/empresa_page.dart';
import '../../usuario/usuariosFuncionarios/pages/funcionario_page.dart';

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
        child: ButtonDefault(
          label: "Cadastrar como empresa",
          aoClicar: (){
            final rota = MaterialPageRoute(
            builder: (context) => const EmpresaPage());

            Navigator.of(context).push(rota);
          },
          cor: Color.fromARGB(255, 1, 44, 45),
        ),
      ),

      Padding(
        padding: EdgeInsets.fromLTRB(200, 70, 200, 20),
        child: ButtonDefault(
          label: "Cadastrar como funcionário",
          aoClicar: (){
            final rota = MaterialPageRoute(
            builder: (context) => const FuncionarioPage());

            Navigator.of(context).push(rota);
          },
          cor: Color.fromARGB(255, 1, 44, 45),
        ),
      ),

      Padding(
        padding: EdgeInsets.fromLTRB(200, 70, 200, 20),
        child: ButtonDefault(
          label: "Cadastrar como cliente",
          aoClicar: (){
            final rota = MaterialPageRoute(
            builder: (context) => const ClientePage());

            Navigator.of(context).push(rota);
          },
          cor: Color.fromARGB(255, 1, 44, 45),
        ),
      ),
    ],    
    )
    );
  }
}
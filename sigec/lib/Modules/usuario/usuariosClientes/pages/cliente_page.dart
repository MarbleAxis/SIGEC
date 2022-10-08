import 'package:flutter/material.dart';
import 'package:sigec/Modules/login/pages/login_page.dart';
import 'package:sigec/Modules/usuario/usuariosClientes/controllers/clientes_controller.dart';
import 'package:sigec/Shared/components/button_form/button_form.dart';
import 'package:sigec/Shared/components/campo_form/campo_form.dart';

class ClientePage extends StatefulWidget {
  const ClientePage({Key? key}) : super(key: key);

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  var mostrarSenha = false;
  final _controller = ClientesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff303030),
        body: ListView(
          children: [
            //logo
            Image.asset(
              'assets/images/cliente.jpg',
              width: 150,
              height: 130,
            ),

            CampoForm(
              label: "Nome", 
              hint: "Ex: Maria..", 
              controller: _controller.nome, 
              icon: const Icon(Icons.person)
            ),
            CampoForm(
              label: "Email", 
              hint: "maria@gmail.com", 
              icon: const Icon(Icons.mail), 
              teclado: TextInputType.emailAddress,
              controller: _controller.email,
            ),
            CampoForm(
              label: "Senha", 
              hint: "Senha", 
              icon: const Icon(Icons.lock), 
              isSenha: true,
              controller: _controller.senha,
            ),
            CampoForm(
              label: "Telefone", 
              hint: "(99) 9 9999-9999", 
              icon: const Icon(Icons.phone), 
              isSenha: true,
              controller: _controller.tel,
            ),

            //Botão salvar
            Padding(
              padding: const EdgeInsets.fromLTRB(400, 30, 400, 50),
              child: ButtonDefault(
                label: "Cadastrar",
                aoClicar: () {
                  final rota = MaterialPageRoute(
                      builder: (context) => const LoginPage());

                  Navigator.of(context).push(rota);
                }, 
              ),
            ),
          ],
        ));
  }
}

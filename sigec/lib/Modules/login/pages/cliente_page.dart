import 'package:flutter/material.dart';

import 'login_page.dart';

class ClientePage extends StatefulWidget {
  const ClientePage({Key? key}) : super(key: key);

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  var mostrarSenha = false;

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

            //nome
            Padding(
              padding: const EdgeInsets.fromLTRB(400, 40, 400, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    label: Text('Nome:'),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),

            //cpf
            Padding(
              padding: const EdgeInsets.fromLTRB(400, 30, 400, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    label: Text('CPF:'),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),

            //email
            Padding(
              padding: const EdgeInsets.fromLTRB(400, 30, 400, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Ex. exemplo@mail.com',
                    label: Text('E-mail:'),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),

            //telefone
            Padding(
              padding: const EdgeInsets.fromLTRB(400, 30, 400, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Ex. 98877-6655',
                    label: Text('Telefone:'),
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),

            //senha
            Padding(
              padding: const EdgeInsets.fromLTRB(400, 30, 400, 0),
              child: TextFormField(
                obscureText: !mostrarSenha,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    label: const Text('Senha:'),
                    prefixIcon: const Icon(Icons.lock),
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            mostrarSenha = !mostrarSenha;
                          });
                        },
                        icon: Icon(mostrarSenha == true
                            ? Icons.visibility_off
                            : Icons.remove_red_eye_outlined)),
                    border: const OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),

            //Botão salvar
            Padding(
              padding: const EdgeInsets.fromLTRB(400, 30, 400, 50),
              child: ElevatedButton(
                onPressed: () {
                  final rota = MaterialPageRoute(
                      builder: (context) => const LoginPage());

                  Navigator.of(context).push(rota);
                },
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red, minimumSize: const Size(100, 50)),
              ),
            ),
          ],
        ));
  }
}

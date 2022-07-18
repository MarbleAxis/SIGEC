import 'package:sigec/Modules/login/pages/EscolherLogin.dart';
import 'package:sigec/Modules/usuariosClientes/MarcarHorario.dart';
import 'package:sigec/modules/usuario/pages/usuario_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mostrarSenha = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff303030),
        body: ListView(
          children: [
            //logo
            Image.asset(
              'assets/images/logo.jpg',
              width: 150,
              height: 150,
            ),

            //email
            Padding(
              padding: const EdgeInsets.fromLTRB(450, 50, 450, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Ex. exemplo@mail.com',
                    label: Text('E-mail:'),
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),

            //senha
            Padding(
              padding: const EdgeInsets.fromLTRB(450, 20, 450, 0),
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

            //Botão entrar
            Padding(
              padding: const EdgeInsets.fromLTRB(450, 50, 450, 0),
              child: ElevatedButton(
                onPressed: () {
                  final rota = MaterialPageRoute(
                      builder: (context) => const Agendar());

                  Navigator.of(context).push(rota);
                },
                child: const Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red, minimumSize: const Size(100, 50)),
              ),
            ),

            //Criar conta
            Padding(
              padding: const EdgeInsets.fromLTRB(450, 50, 450, 0),
              child: TextButton(
                onPressed: () {
                  //criar rota, de onde para onde
                  final rota = MaterialPageRoute(
                    builder: (context) => const FormaLogin());

                  Navigator.of(context).push(rota);
                },
                child: const Text(
                  'Criar conta',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}

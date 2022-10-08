import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:sigec/Modules/Agenda/pages/Agenda_PessoalClientes.dart';
import 'package:sigec/Modules/login/controllers/login_controller.dart';
import 'package:sigec/Modules/login/pages/EscolherLogin.dart';
import 'package:flutter/material.dart';
import 'package:sigec/Shared/components/button_form/button_form.dart';
import 'package:sigec/Shared/components/campo_form/campo_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mostrarSenha = false;
  final _controller = LoginController();
  int _selectedDestination = 0;

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
            Padding(padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
              child: ButtonDefault(
                label: "Cadastrar",
                aoClicar: () {
                  _controller.entrarOnClick(
                  onSuccess: () {
                    final rota = MaterialPageRoute(builder: (context) => const AgendaCliente());
                    Navigator.of(context).pushAndRemoveUntil(rota, (context) => true);
                  }, 
                  onFailure: (motivo) {
                    MotionToast.error(
                      title: const Text(
                        'Error',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      description: const Text('Por favor preencha seus dados!'),
                      animationType: AnimationType.fromLeft,
                      position: MotionToastPosition.top,
                      barrierColor: Colors.black.withOpacity(0.3),
                      width: 300,
                      height: 80,
                      dismissable: false,
                    ).show(context);                  
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
              child: ButtonDefault(
                label: "Criar conta",
                aoClicar: () {
                  final rota = MaterialPageRoute(builder: (context) => const FormaLogin());
                  Navigator.of(context).pushAndRemoveUntil(rota, (context) => true);
                },
              ),
            ),
          ],
        ));
  }
  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:sigec/Modules/usuario/usuariosEmpresas/controllers/empresa_controller.dart';
import 'package:sigec/Shared/components/button_form/button_form.dart';
import 'package:sigec/Shared/components/campo_form/campo_form.dart';

import '../../../login/pages/login_page.dart';

class EmpresaPage extends StatefulWidget {
  const EmpresaPage({Key? key}) : super(key: key);

  @override
  State<EmpresaPage> createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  var mostrarSenha = false;
  final _controller = EmpresaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff303030),
        body: ListView(
          children: [
            //logo
            Image.asset(
              'assets/images/empresa.jpg',
              width: 150,
              height: 150,
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
            CampoForm(
              label: "CNPJ", 
              hint: "cnpj...", 
              icon: const Icon(Icons.key_off_sharp), 
              isSenha: true,
              controller: _controller.cnpj,
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

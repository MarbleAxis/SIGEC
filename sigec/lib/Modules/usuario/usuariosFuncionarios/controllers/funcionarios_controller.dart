import 'package:flutter/material.dart';
import 'package:sigec/Modules/usuario/usuariosFuncionarios/models/funcionarios_model.dart';

class FuncionariosController extends ChangeNotifier{
  final nome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();
  final tel = TextEditingController();

  void salvarOnPressed({
    required VoidCallback onSuccess,
    required VoidCallback? Function(String erro) onFailure
  }){      
    try{
      final usuario = FuncionariosModel(
        email: email.text,
        nome: nome.text,
        senha: senha.text,
        tel: tel.text,
      );
      
      usuario.isValid();
      onSuccess();
    }
    catch(e) {
      onFailure(e.toString());
    }
  }
}
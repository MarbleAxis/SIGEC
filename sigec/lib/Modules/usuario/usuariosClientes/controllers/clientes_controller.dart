import 'package:flutter/material.dart';
import 'package:sigec/Modules/usuario/usuariosClientes/models/clientes_model.dart';

class ClientesController extends ChangeNotifier{
  final nome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();
  final tel = TextEditingController();

  void salvarOnPressed({
    required VoidCallback onSuccess,
    required VoidCallback? Function(String erro) onFailure
  }){      
    try{
      final usuario = ClientesModel(
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
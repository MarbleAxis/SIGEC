import 'package:flutter/material.dart';
import 'package:sigec/Modules/usuario/usuariosEmpresas/models/empresa_model.dart';

class EmpresaController extends ChangeNotifier{
  final nome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();
  final tel = TextEditingController();
  final cnpj = TextEditingController();

  void salvarOnPressed({
    required VoidCallback onSuccess,
    required VoidCallback? Function(String erro) onFailure
  }){      
    try{
      final usuario = EmpresaModel(
        email: email.text,
        nome: nome.text,
        senha: senha.text,
        tel: tel.text,
        cnpj: cnpj.text,
      );
      
      usuario.isValid();
      onSuccess();
    }
    catch(e) {
      onFailure(e.toString());
    }
  }
}
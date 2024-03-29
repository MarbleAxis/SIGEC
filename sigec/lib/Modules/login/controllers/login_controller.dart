import 'package:flutter/material.dart';
import 'package:sigec/Modules/login/models/login_models.dart';

class LoginController extends ChangeNotifier{
  final email = TextEditingController();
  final senha = TextEditingController();

  void entrarOnClick({
    required VoidCallback onSuccess,
    required VoidCallback? Function(String erro) onFailure
  }){      
    try{
      final usuario = LoginModel(
        email: email.text,
        senha: senha.text
      );
      
      usuario.isValid();
      onSuccess();
    }
    catch(e) {
      onFailure(e.toString());
    }
  }
}
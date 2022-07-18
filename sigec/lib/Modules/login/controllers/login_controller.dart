import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier{
  final email = TextEditingController();
  final senha = TextEditingController();

  void entrarOnClick({required VoidCallback onSuccess, 
  required VoidCallback Function(String erro) onFailure}){


    final loginDeuCerto = true;

    if(loginDeuCerto){
      onSuccess();
    }
    else{
      onFailure('Motivo do erro ');
    }
  }
}
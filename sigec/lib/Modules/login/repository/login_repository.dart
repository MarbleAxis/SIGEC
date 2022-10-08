import 'package:sigec/Modules/login/models/login_models.dart';

class LoginRepository{
  
  Future<void> incluir(LoginModel usuario) async{

  }
  Future<void> excluir(LoginModel usuario) async{
    
  }
  Future<void> alterar(LoginModel usuario) async{
    
  }
  Future<LoginModel> selecionar(String email) async{
    return  LoginModel();
    
  }
  Future<List<LoginModel>> selecionarTodos() async{
    return <LoginModel>[];
    
  }
}
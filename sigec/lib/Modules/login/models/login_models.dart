// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

//construtor
class LoginModel {
  String? email;
  String? senha;
  
  LoginModel({
    this.email,
    this.senha,
  });

  LoginModel copyWith({
    String? email,
    String? senha,
  }) {
    return LoginModel(
      email: email ?? this.email,
      senha: senha ?? this.senha,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'senha': senha,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      email: map['email'] != null ? map['email'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) => LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UsuarioModel(email: $email, senha: $senha)';

  @override
  bool operator ==(covariant LoginModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.senha == senha;
  }

  @override
  int get hashCode => email.hashCode ^ senha.hashCode;

  bool isValid(){
    if (senha ==null || senha!.isEmpty){
      throw Exception('Senha não informada!');
    }

    if (email ==null || email!.isEmpty){
      throw Exception('Email não informado!');
    }

    return true;
  }
}

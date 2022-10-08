// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

//construtor
class FuncionariosModel {
  String? nome;
  String? email;
  String? senha;
  String? tel;
  
  FuncionariosModel({
    this.nome,
    this.email,
    this.senha,
    this.tel,
  });

  FuncionariosModel copyWith({
    String? nome,
    String? email,
    String? senha,
    String? tel,
  }) {
    return FuncionariosModel(
      nome: nome ?? this.nome,
      email: email ?? this.email,
      senha: senha ?? this.senha,
      tel: tel ?? this.tel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'email': email,
      'senha': senha,
      'tel': tel,
    };
  }

  factory FuncionariosModel.fromMap(Map<String, dynamic> map) {
    return FuncionariosModel(
      nome: map['nome'] != null ? map['nome'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
      tel: map['tel'] != null ? map['tel'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FuncionariosModel.fromJson(String source) => FuncionariosModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UsuarioModel(nome: $nome, email: $email, senha: $senha, tel: $tel)';

  @override
  bool operator ==(covariant FuncionariosModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.email == email &&
      other.senha == senha && 
      other.tel == tel;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ senha.hashCode ^ tel.hashCode;

  bool isValid(){
    if (nome ==null || nome!.isEmpty){
      throw Exception('Nome não informado!');
    }

    if (senha ==null || senha!.isEmpty){
      throw Exception('Senha não informada!');
    }

    if (email ==null || email!.isEmpty){
      throw Exception('Email não informado!');
    }
    
    if (tel ==null || tel!.isEmpty){
      throw Exception('Telefone não informado!');
    }

    return true;
  }
}

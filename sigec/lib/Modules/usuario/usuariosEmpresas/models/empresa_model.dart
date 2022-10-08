// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

//construtor
class EmpresaModel {
  String? nome;
  String? email;
  String? senha;
  String? tel;
  String? cnpj;
  
  EmpresaModel({
    this.nome,
    this.email,
    this.senha,
    this.tel,
    this.cnpj,
  });

  EmpresaModel copyWith({
    String? nome,
    String? email,
    String? senha,
    String? tel,
    String? cnpj,
  }) {
    return EmpresaModel(
      nome: nome ?? this.nome,
      email: email ?? this.email,
      senha: senha ?? this.senha,
      tel: tel ?? this.tel,
      cnpj: cnpj ?? this.cnpj,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'email': email,
      'senha': senha,
      'tel': tel,
      'cnpj': cnpj,
    };
  }

  factory EmpresaModel.fromMap(Map<String, dynamic> map) {
    return EmpresaModel(
      nome: map['nome'] != null ? map['nome'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
      tel: map['tel'] != null ? map['tel'] as String : null,
      cnpj: map['cnpj'] != null ? map['cnpj'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmpresaModel.fromJson(String source) => EmpresaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UsuarioModel(nome: $nome, email: $email, senha: $senha, tel: $tel, cnpj: $cnpj)';

  @override
  bool operator ==(covariant EmpresaModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.email == email &&
      other.senha == senha && 
      other.tel == tel && 
      other.cnpj == cnpj;
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
    
    if (cnpj ==null || cnpj!.isEmpty){
      throw Exception('CNPJ não informado!');
    }

    return true;
  }
}

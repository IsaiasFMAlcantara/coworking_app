import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogarBaseFirebase {
  final BuildContext context;
  LogarBaseFirebase(this.context);
  Future<void> logarBase(String email, String senha) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      Navigator.of(context).pushNamed('/home');
      print('Logado com sucesso');
    } catch (e) {
      print('Erro ao fazer login: $e');
    }
  }
}

class CadastrarUsuario {
  final BuildContext context;
  CadastrarUsuario(this.context);
  Future<void> cadastraruser(String email, String senha) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: senha);
      print('cadastrado com sucesso');
    } catch (e) {
      print('Deu erro: $e');
    }
  }
}

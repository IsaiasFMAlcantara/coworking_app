import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogarBaseFirebase {
  final BuildContext context;
  LogarBaseFirebase(this.context);
  Future<void> logarBase(String email, String senha) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      Get.toNamed('/home');
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
      Get.toNamed('/log_user');
    } catch (e) {
      print('Deu erro: $e');
    }
  }
}

class DeslogarFirebase {
  Future<void> deslogar() async {
    try {
      await FirebaseAuth.instance.signOut();
      print('deslogado com sucesso');
      Get.toNamed('/log_user');
    } catch (e) {
      print('Erro ao deslogar: $e');
    }
  }
}

class RedefinirSenha {
  final BuildContext context;
  RedefinirSenha(this.context);
  Future<void> redefinirsenha(String email) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email);
      print('Email enviado com sucesso');
      Get.toNamed('/log_user');
    } catch (e) {
      print('Erro: $e');
    }
  }
}
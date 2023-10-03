import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class UserController extends GetxController {
  Rx<User?> _user = Rx<User?>(null);
  User? get user => _user.value;
  @override
  void onInit() {
    super.onInit();
    _user.bindStream(FirebaseAuth.instance.authStateChanges());
  }
}

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
    } catch (e) {
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
      Get.toNamed('/log_user');
    } catch (e) {
    }
  }
}

class DeslogarFirebase {
  Future<void> deslogar() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.toNamed('/log_user');
    } catch (e) {
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
      Get.toNamed('/log_user');
    } catch (e) {
    }
  }
}

class ListarSalas {
  Future<List<Map<String, dynamic>>> listarsalas() async {
    final base = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await base.collection('rooms').get();

    // Mapear os documentos e IDs para uma lista de mapas
    List<Map<String, dynamic>> salas = [];
    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic> salaData = doc.data() as Map<String, dynamic>;
      salaData['id'] = doc.id; // Adicione o ID ao mapa de dados
      salas.add(salaData);
    });

    return salas;
  }
}
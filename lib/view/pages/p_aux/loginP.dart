import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coworking_app/custom/CustomText.dart';

import '../../../custom/CustomButtom.dart';
import '../../../utils/colors.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formkey = GlobalKey<FormState>();
  bool _formValido = false;
  TextEditingController _emailvalido = TextEditingController();

  TextEditingController _senhavalida = TextEditingController();
  String _validarEntrada(String? mensagem) {
    if (mensagem == null || mensagem.isEmpty) {
      return 'Preencha o campo';
    } else {
      return 'Campo preenchido';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Container(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: ColorsCoworking.iconpageColor,
                    ),
                  ),
                  CustomText(
                    texto: 'Área Login',
                    cor: ColorsCoworking.textpageColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _emailvalido,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Email (example@gmail.com)",
              ),
              onChanged: (value) {
                setState(() {
                  _formValido = value.isNotEmpty;
                });
              },
              validator: _validarEntrada,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _senhavalida,
              obscureText: true,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: _formValido ? Colors.blue : Colors.red),
                ),
                labelText: "Password",
              ),
              onChanged: (value) {
                setState(() {
                  _formValido = value.isNotEmpty;
                });
              },
              validator: _validarEntrada,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtom(
              textobuttom: 'Login',
              corbuttom: ColorsCoworking.buttompageColor,
              funcao: () {
                Get.toNamed('/');
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtom(
                  textobuttom: 'Cadastrar Usuário',
                  corbuttom: ColorsCoworking.buttompageColor,
                  funcao: () {
                    Get.toNamed('/');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                CustomButtom(
                  textobuttom: 'Redefinir Senha',
                  corbuttom: ColorsCoworking.buttompageColor,
                  funcao: () {
                    Get.toNamed('/');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

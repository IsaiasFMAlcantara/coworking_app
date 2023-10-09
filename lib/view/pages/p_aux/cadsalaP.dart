import 'package:flutter/material.dart';
import 'package:coworking_app/control/func_firebase.dart';
import '../../../custom/CustomButtom.dart';
import '../../../custom/CustomText.dart';
import '../../../utils/colors.dart';

class CadastroSalas extends StatefulWidget {
  const CadastroSalas({super.key});

  @override
  State<CadastroSalas> createState() => _CadastroSalasState();
}

class _CadastroSalasState extends State<CadastroSalas> {
  final _formkey = GlobalKey<FormState>();
  bool _formValido = false;
  TextEditingController _capacida = TextEditingController();
  TextEditingController _nome_sala = TextEditingController();
  TextEditingController _observacoes = TextEditingController();
  TextEditingController _preco = TextEditingController();
  TextEditingController _tamanho = TextEditingController();
  TextEditingController _equipamentos = TextEditingController();

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
                  CustomText(
                    texto: 'Cadastrar Salas',
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
              controller: _capacida,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Capacidade",
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
              controller: _nome_sala,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Nome da Sala",
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
              controller: _observacoes,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Observações",
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
              controller: _preco,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Preço",
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
              controller: _tamanho,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Tamanho",
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
              controller: _equipamentos,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Equipamentos",
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
              textobuttom: 'Cadastrar',
              corbuttom: ColorsCoworking.buttompageColor,
              funcao: () {},
            )
          ],
        ),
      ),
    );
  }
}

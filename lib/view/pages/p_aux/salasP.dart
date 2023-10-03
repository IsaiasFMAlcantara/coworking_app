import 'package:coworking_app/custom/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coworking_app/control/func_firebase.dart';

import '../../../utils/colors.dart';

class ListRooms extends StatefulWidget {
  const ListRooms({super.key});

  @override
  State<ListRooms> createState() => _ListRoomsState();
}

class _ListRoomsState extends State<ListRooms> {
  final ListarSalas listarSalas = ListarSalas();
  List<Map<String, dynamic>> salas = [];

  @override
  void initState() {
    super.initState();
    _carregarSalas();
  }

  Future<void> _carregarSalas() async {
    final salasData = await listarSalas.listarsalas();
    setState(() {
      salas = salasData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: salas.length,
            itemBuilder: (context, index) {
              final sala = salas[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Container(
                  height: 40,
                  child: Card(
                    child: CustomText(
                      texto: '${sala['nome_sala']}',
                      cor: ColorsCoworking.texthomeColor,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
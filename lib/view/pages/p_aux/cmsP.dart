import 'package:coworking_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../p_cadsala.dart';

class TelaCms extends StatefulWidget {
  const TelaCms({super.key});

  @override
  State<TelaCms> createState() => _TelaCmsState();
}

class _TelaCmsState extends State<TelaCms> {
  int _paginaSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _paginaSelecionada,
        children: [
          PCadS(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaSelecionada,
        onTap: (int? novoValor) {
          setState(() {
            _paginaSelecionada = novoValor!;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: ColorsCoworking.iconstackColor,
            ),
            label: 'Cadastrar Sala',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank_sharp,
              color: ColorsCoworking.iconstackColor,
            ),
            label: 'Listar Salas',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: ColorsCoworking.iconstackColor,
            ),
            label: 'Faturamento',
          ),
        ],
      ),
    );
  }
}

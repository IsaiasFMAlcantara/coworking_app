import 'package:flutter/material.dart';

import 'p_aux/cadsalaP.dart';

class PCadS extends StatefulWidget {
  const PCadS({super.key});

  @override
  State<PCadS> createState() => _PCadSState();
}

class _PCadSState extends State<PCadS> {
  @override
  Widget build(BuildContext context) {
    return const CadastroSalas();
  }
}

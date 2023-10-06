import 'package:flutter/material.dart';

import '../../custom/CustomDrawer.dart';
import '../../custom/customAppBar.dart';
import 'package:coworking_app/view/pages/p_aux/cmsP.dart';

class PCms extends StatefulWidget {
  const PCms({super.key});

  @override
  State<PCms> createState() => _PCmsState();
}

class _PCmsState extends State<PCms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(title: 'Gerenciamento'),
      body: TelaCms(),
    );
  }
}

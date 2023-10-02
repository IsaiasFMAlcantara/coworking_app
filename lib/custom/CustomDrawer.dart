import 'package:coworking_app/custom/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coworking_app/utils/colors.dart';
import 'package:coworking_app/control/func_firebase.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  DeslogarFirebase deslogarBaseFirebase = DeslogarFirebase();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsCoworking.drawerColor,
      child: ListView(
        children: [
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: CustomText(
                texto: 'Home',
                cor: ColorsCoworking.textdrawerColor,
              ),
              onTap: () {
                Get.toNamed('/');
              },
            ),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.person_3,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: CustomText(
                texto: 'Cadastro de usuário',
                cor: ColorsCoworking.textdrawerColor,
              ),
              onTap: () {
                Get.toNamed('/cad_user');
              },
            ),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.room,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: CustomText(
                texto: 'Salas',
                cor: ColorsCoworking.textdrawerColor,
              ),
              onTap: () {
                Get.toNamed('/salas');
              },
            ),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: CustomText(
                texto: 'Sair',
                cor: ColorsCoworking.textdrawerColor,
              ),
              onTap: () {
                deslogarBaseFirebase.deslogar();
              },
            ),
          ),
        ],
      ),
    );
  }
}

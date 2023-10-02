import 'package:coworking_app/custom/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsCoworking.appbarColor,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.food_bank_rounded,
              color: ColorsCoworking.iconappbarColor,
            ),
            SizedBox(width: 8),
            //Text(title),
            CustomText(
              texto: title,
              cor: ColorsCoworking.textappbarColor,
            ),
            SizedBox(width: 8),
            Icon(
              Icons.food_bank_rounded,
              color: ColorsCoworking.iconappbarColor,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:coworking_app/custom/CustomText.dart';
import 'package:flutter/material.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/6712/6712159.png'),
        ),
        CustomText(texto: 'Working in Progress')
      ],
    );
  }
}

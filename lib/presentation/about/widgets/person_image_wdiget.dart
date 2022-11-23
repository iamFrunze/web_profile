import 'package:flutter/material.dart';
import 'package:web_profile/res/app_assets.dart';

class PersonImageWidget extends StatelessWidget {
  const PersonImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppAssets.personImage,
          width: 450,
        ),
        Center(
          child: Container(
            height: 550,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.purple),
            ),
          ),
        )
      ],
    );
  }
}

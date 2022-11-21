import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';

/// Кастомный виджет в виде -*-
class CustomPointsWidget extends StatelessWidget {
  const CustomPointsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: AppColors.skillPoint,
            height: 40,
            width: 2,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.skillPoint,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          width: 32,
          height: 32,
        ),
        const SizedBox(height: 5),
        Expanded(
          flex: 1,
          child: Container(
            color: AppColors.skillPoint,
            height: 40,
            width: 2,
          ),
        ),
      ],
    );
  }
}

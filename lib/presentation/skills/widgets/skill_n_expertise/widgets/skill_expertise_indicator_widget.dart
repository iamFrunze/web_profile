import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';

const margin = 4.0;
const halfWidthScreen = 2.0;

class SkillExpertiseIndicatorWidget extends StatelessWidget {
  final int percent;

  const SkillExpertiseIndicatorWidget({
    Key? key,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final indicatorWidth =
        size.width / halfWidthScreen - (size.width / halfWidthScreen / margin);

    return Stack(
      children: [
        Container(
          height: 30,
          width: indicatorWidth,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: AppColors.bckSkillIndicator,
          ),
        ),
        Container(
          height: 30,
          width: indicatorWidth * percent / 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.skillStartGradient,
                AppColors.skillEndGradient,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: AppColors.skillPoint,
          ),
        ),
      ],
    );
  }
}

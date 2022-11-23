import 'package:flutter/material.dart';
import 'package:web_profile/res/app_assets.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_dimensions.dart';
import 'package:web_profile/res/app_strings.dart';

class AwardsWidget extends StatelessWidget {
  const AwardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: const [
        _Award(
          text: AppStrings.arcticCodeDesc,
          imagePath: AppAssets.awardArcticCode,
        ),
        _Award(
          text: AppStrings.pullSharkDesc,
          imagePath: AppAssets.awardShark,
        ),
        _Award(
          text: AppStrings.patented,
          imagePath: AppAssets.patent,
        ),
      ],
    );
  }
}

class _Award extends StatelessWidget {
  final String text;
  final String imagePath;

  const _Award({
    Key? key,
    required this.text,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
      child: Column(
        children: [
          Image(
            image: AssetImage(imagePath),
            width: AppDimensions.awardsLogoSize,
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 32,
                color: AppColors.awardsGold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

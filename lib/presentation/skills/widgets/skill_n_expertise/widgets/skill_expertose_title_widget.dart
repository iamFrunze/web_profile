import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_profile/res/app_theme.dart';

class SkillExpertiseTitleWidget extends StatelessWidget {
  final String text;
  final String imgPath;

  const SkillExpertiseTitleWidget({
    Key? key,
    required this.text,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          imgPath,
          width: 24,
        ),
        const SizedBox(width: 24),
        Text(
          text,
          style: AppTheme.skillTitleTextStyle,
        ),
      ],
    );
  }
}

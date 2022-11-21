import 'package:flutter/material.dart';
import 'package:web_profile/res/app_theme.dart';

class TitleExperienceWidget extends StatelessWidget {
  final String text;

  const TitleExperienceWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppTheme.titleSkillsScreenTextStyle,
    );
  }
}

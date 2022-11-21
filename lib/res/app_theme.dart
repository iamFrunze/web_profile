import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';

class AppTheme {
  static const navigationTextStyle = TextStyle(
    fontSize: 34.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const titleSkillsScreenTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.titleSkills,
  );

  static const titleSkillTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: Colors.white,
  );
  static const descSkillTextStyle = TextStyle(
    fontSize: 24,
    color: Colors.white,
  );
  static final dateSkillTextStyle = TextStyle(
    fontSize: 24,
    color: Colors.white.withOpacity(0.7),
  );
  static const skillTitleTextStyle = TextStyle(
    fontSize: 24,
    color: Colors.white,
  );
  static const overlayNameTextStyle = TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.bold,
    color: AppColors.dmOverlayBackground,
    letterSpacing: 8.0
  );
}

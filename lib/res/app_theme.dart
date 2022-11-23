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
      letterSpacing: 8.0);
  static const contactNameTextStyle = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 15,
  );
  static const contactDevTextStyle = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const contactMeTextStyle = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const descContactTextStyle = TextStyle(
    fontSize: 48,
    color: Colors.white,
  );
  static const myWorkTextStyle = TextStyle(
    fontSize: 56,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const workElementTitleTextStyle = TextStyle(
    fontSize: 32,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const workElementDescTextStyle = TextStyle(
    fontSize: 28,
    color: Colors.white,
  );
}

import 'package:flutter/material.dart';
import 'package:web_profile/presentation/skills/skills_screen.dart';
import 'package:web_profile/res/app_colors.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.dmBackground, body: SkillsScreen());
  }
}

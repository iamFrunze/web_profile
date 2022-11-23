import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_profile/presentation/skills/widgets/skill_n_expertise/skill_n_expertise_widget.dart';
import 'package:web_profile/presentation/skills/widgets/work_experience/work_experience_widget.dart';
import 'package:web_profile/res/app_assets.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_strings.dart';
import 'package:web_profile/res/app_theme.dart';

/// 2-й экран 'Skills'
class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dmBackground,
      body: Container(
        margin: const EdgeInsets.only(top: 64),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    AppStrings.name.toUpperCase(),
                    style: AppTheme.overlayNameTextStyle,
                  ),
                ),
                const SizedBox(width: 64),
                const Expanded(flex: 1, child: WorkExperienceWidget()),
                const Expanded(flex: 2, child: SkillExpertiseWidget()),
              ],
            ),
            Positioned(
              bottom: 100,
              right: 350,
              child: SvgPicture.asset(
                AppAssets.flutterLogo,
                width: 500,
                color: AppColors.dmOverlayBackground,
              ),
            )
          ],
        ),
      ),
    );
  }
}

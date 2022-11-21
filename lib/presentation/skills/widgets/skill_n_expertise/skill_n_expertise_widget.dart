import 'package:flutter/material.dart';
import 'package:web_profile/presentation/skills/widgets/skill_n_expertise/widgets/skill_widget.dart';
import 'package:web_profile/presentation/skills/widgets/title_experience_widget.dart';
import 'package:web_profile/res/app_assets.dart';
import 'package:web_profile/res/app_strings.dart';

/// Величина для получения половины ширины экрана
const halfWidthScreen = 2.0;

/// Величина отступа в четверть
const margin = 4.0;

/// Правая колонка виджетов
class SkillExpertiseWidget extends StatelessWidget {
  const SkillExpertiseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: (size.width / halfWidthScreen / margin),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TitleExperienceWidget(text: AppStrings.skills),
          SizedBox(height: 64),
          SkillsWidget(
            text: AppStrings.dart,
            imgPath: AppAssets.dart,
            percent: 75,
          ),
          SkillsWidget(
            text: AppStrings.flutter,
            imgPath: AppAssets.flutterLogo,
            percent: 85,
          ),
          SkillsWidget(
            text: AppStrings.kotlin,
            imgPath: AppAssets.kotlin,
            percent: 40,
          ),
          SkillsWidget(
            text: AppStrings.java,
            imgPath: AppAssets.java,
            percent: 60,
          ),
          SkillsWidget(
            text: AppStrings.cpp,
            imgPath: AppAssets.cpp,
            percent: 20,
          ),
        ],
      ),
    );
  }
}

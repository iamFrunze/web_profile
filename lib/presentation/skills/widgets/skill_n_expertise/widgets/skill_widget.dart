import 'package:flutter/material.dart';
import 'package:web_profile/presentation/skills/widgets/skill_n_expertise/widgets/skill_expertise_indicator_widget.dart';
import 'package:web_profile/presentation/skills/widgets/skill_n_expertise/widgets/skill_expertose_title_widget.dart';

class SkillsWidget extends StatelessWidget {
  final String text;
  final String imgPath;
  final int percent;

  const SkillsWidget({
    Key? key,
    required this.text,
    required this.imgPath,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 24),
        SkillExpertiseTitleWidget(
          text: text,
          imgPath: imgPath,
        ),
        const SizedBox(height: 24),
        SkillExpertiseIndicatorWidget(percent: percent),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:web_profile/res/app_theme.dart';

/// Текстовый виджет с описанием каждого поинта
class PointDescriptionWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String date;

  const PointDescriptionWidget({
    Key? key,
    required this.title,
    required this.desc,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: AppTheme.titleSkillTextStyle),
        const SizedBox(height: 8),
        Text(desc, style: AppTheme.descSkillTextStyle),
        const SizedBox(height: 8),
        Text(date, style: AppTheme.dateSkillTextStyle),
      ],
    );
  }
}

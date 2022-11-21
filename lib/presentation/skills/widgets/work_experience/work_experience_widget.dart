import 'package:flutter/material.dart';
import 'package:web_profile/presentation/skills/widgets/title_experience_widget.dart';
import 'package:web_profile/presentation/skills/widgets/work_experience/widgets/experience_point_widget.dart';
import 'package:web_profile/res/app_strings.dart';

/// Левая колона виджетов
class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleExperienceWidget(text: AppStrings.workExperience),
        SizedBox(height: 64),
        ExperiencePoint(
          title: AppStrings.cppTitle,
          desc: AppStrings.cppDesc,
          date: AppStrings.cppDate,
        ),
        ExperiencePoint(
          title: AppStrings.javaTitle,
          desc: AppStrings.javaDesc,
          date: AppStrings.javaDate,
        ),
        ExperiencePoint(
          title: AppStrings.kotlinTitle,
          desc: AppStrings.kotlinDesc,
          date: AppStrings.kotlinDate,
        ),
        ExperiencePoint(
          title: AppStrings.flutterTitle,
          desc: AppStrings.flutterDesc,
          date: AppStrings.flutterDate,
        ),
        ExperiencePoint(
          title: AppStrings.flutterCourseTitle,
          desc: AppStrings.flutterCourseDesc,
          date: AppStrings.flutterCourseDate,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:web_profile/presentation/skills/widgets/work_experience/widgets/custom_points_widget.dart';
import 'package:web_profile/presentation/skills/widgets/work_experience/widgets/point_descripion_widget.dart';

class ExperiencePoint extends StatelessWidget {
  final String title;
  final String desc;
  final String date;

  const ExperiencePoint({
    Key? key,
    required this.title,
    required this.desc,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: SizedBox(
        height: size.height * 0.1,
        child: Row(
          children: [
            const CustomPointsWidget(),
            const SizedBox(width: 30),
            PointDescriptionWidget(title: title, desc: desc, date: date),
          ],
        ),
      ),
    );
  }
}

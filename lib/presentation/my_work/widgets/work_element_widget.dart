import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_theme.dart';

class WorkElementWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final String desc;

  const WorkElementWidget({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        color: AppColors.workElement,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imgPath,
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppTheme.workElementTitleTextStyle,
                    ),
                    Text(
                      desc,
                      textAlign: TextAlign.center,
                      style: AppTheme.workElementDescTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:web_profile/presentation/widgets/awards_widget.dart';
import 'package:web_profile/presentation/widgets/social_links_widget.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_strings.dart';

class PersonalInformationCardWidget extends StatelessWidget {
  const PersonalInformationCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 1.5,
                colors: [
                  AppColors.aboutStartGradient,
                  AppColors.aboutEndGradient,
                ],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _PersonalInfo(),
                  SocialLinksWidget(),
                ],
              ),
            ),
          ),
        ),
        const Expanded(flex: 1, child: AwardsWidget()),
      ],
    );
  }
}

class _PersonalInfo extends StatelessWidget {
  const _PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          AppStrings.helloWorld,
          style: TextStyle(
            fontSize: 64,
            color: Colors.white,
          ),
        ),
        Text(
          AppStrings.iam,
          style: TextStyle(
            fontSize: 84,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppStrings.personalDescription,
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_profile/presentation/widgets/awards.dart';
import 'package:web_profile/res/app_assets.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_dimensions.dart';
import 'package:web_profile/res/app_strings.dart';

class PersonalInformationCard extends StatelessWidget {
  const PersonalInformationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
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
                  _SocialLinks(),
                ],
              ),
            ),
          ),
        ),
        const Expanded(flex: 1, child: Awards()),
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

class _SocialLinks extends StatelessWidget {
  const _SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 64),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(
              AppDimensions.marginBetweenSocialLinks,
            ),
            child: SvgPicture.asset(
              AppAssets.vk,
              color: Colors.white,
              width: AppDimensions.socialIconSize,
              height: AppDimensions.socialIconSize,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(
              AppDimensions.marginBetweenSocialLinks,
            ),
            child: SvgPicture.asset(
              AppAssets.tg,
              color: Colors.white,
              width: AppDimensions.socialIconSize,
              height: AppDimensions.socialIconSize,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(
              AppDimensions.marginBetweenSocialLinks,
            ),
            child: SvgPicture.asset(
              AppAssets.github,
              color: Colors.white,
              width: AppDimensions.socialIconSize,
              height: AppDimensions.socialIconSize,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(
              AppDimensions.marginBetweenSocialLinks,
            ),
            child: SvgPicture.asset(
              AppAssets.habr,
              color: Colors.white,
              width: AppDimensions.socialIconSize,
              height: AppDimensions.socialIconSize,
            ),
          ),
        ],
      ),
    );
  }
}

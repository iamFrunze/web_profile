import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_profile/res/app_assets.dart';
import 'package:web_profile/res/app_dimensions.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 64),
      child: Row(
        mainAxisSize: MainAxisSize.min,
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

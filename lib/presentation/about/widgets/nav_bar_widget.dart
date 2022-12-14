import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_dimensions.dart';
import 'package:web_profile/res/app_strings.dart';
import 'package:web_profile/res/app_theme.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 74, top: 74),
      child: Column(
        children: const [
          FlutterLogo(size: AppDimensions.flutterLogoSize),
          _NavBarElement(text: AppStrings.about),
          _NavBarElement(text: AppStrings.skillsAndExperience),
          _NavBarElement(text: AppStrings.myWork),
          _NavBarElement(text: AppStrings.testimonials),
          _NavBarElement(text: AppStrings.contact),
        ],
      ),
    );
  }
}

class _NavBarElement extends StatefulWidget {
  final String text;

  const _NavBarElement({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<_NavBarElement> createState() => _NavBarElementState();
}

class _NavBarElementState extends State<_NavBarElement> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      decoration: isHover
          ? BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppDimensions.borderRadiusNavBarElements),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppColors.aboutStartGradient,
                  AppColors.aboutEndGradient,
                ],
              ),
            )
          : null,
      child: MouseRegion(
        onEnter: (value) => setState(() => isHover = true),
        onExit: (value) => setState(() => isHover = false),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimensions.verticalPaddingNavBarElements,
            horizontal: AppDimensions.horizontalPaddingNavBarElements,
          ),
          child: Text(
            widget.text,
            style: AppTheme.navigationTextStyle,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_dimensions.dart';
import 'package:web_profile/res/app_strings.dart';
import 'package:web_profile/res/app_theme.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 74, top: 74),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            FlutterLogo(size: AppDimensions.flutterLogoSize),
            _NavBarElement(text: AppStrings.home),
            _NavBarElement(text: AppStrings.about),
            _NavBarElement(text: AppStrings.myWork),
            _NavBarElement(text: AppStrings.testimonials),
            _NavBarElement(text: AppStrings.contact),
          ],
        ),
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

import 'package:flutter/material.dart';
import 'package:web_profile/presentation/about/widgets/nav_bar_widget.dart';
import 'package:web_profile/presentation/about/widgets/person_image_wdiget.dart';
import 'package:web_profile/presentation/about/widgets/personal_information_card_widget.dart';
import 'package:web_profile/res/app_colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dmBackground,
      body: Stack(
        children: [
          Row(
            children: const [
              Expanded(flex: 1, child: NavBarWidget()),
              Expanded(flex: 4, child: PersonalInformationCardWidget()),
            ],
          ),
          const Positioned(
            bottom: 150,
            right: 250,
            child: PersonImageWidget(),
          ),
        ],
      ),
    );
  }
}

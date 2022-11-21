import 'package:flutter/material.dart';
import 'package:web_profile/presentation/about/widgets/nav_bar.dart';
import 'package:web_profile/presentation/about/widgets/person_image.dart';
import 'package:web_profile/presentation/about/widgets/personal_information_card.dart';
import 'package:web_profile/presentation/widgets/awards.dart';
import 'package:web_profile/res/app_colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dmBackground,
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 2,
                child: Row(
                  children: const [
                    NavBar(),
                    PersonalInformationCard(),
                  ],
                ),
              ),
              const Flexible(flex: 1, child: Awards()),
            ],
          ),
          const Positioned(
            bottom: 150,
            right: 250,
            child: PersonImage(),
          ),
        ],
      ),
    );
  }
}

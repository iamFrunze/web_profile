import 'package:flutter/material.dart';
import 'package:web_profile/presentation/contact/widgets/contact_text_field_widget.dart';
import 'package:web_profile/presentation/contact/widgets/send_message_btn_widget.dart';
import 'package:web_profile/presentation/widgets/social_links_widget.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_strings.dart';
import 'package:web_profile/res/app_theme.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dmBackground,
      body: Row(
        children: const [
          Expanded(flex: 1, child: _ContactInfo()),
          Expanded(flex: 2, child: _EmailContact()),
        ],
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  const _ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const FlutterLogo(
          size: 210,
          textColor: Colors.white,
          style: FlutterLogoStyle.stacked,
        ),
        Column(
          children: [
            Text(
              AppStrings.name.toUpperCase(),
              style: AppTheme.contactNameTextStyle,
            ),
            Text(
              AppStrings.flutterDev.toUpperCase(),
              style: AppTheme.contactDevTextStyle,
            ),
            const SocialLinksWidget(),
          ],
        ),
        const Text(
          AppStrings.inTouch,
          style: AppTheme.descContactTextStyle,
        ),
      ],
    );
  }
}

class _EmailContact extends StatelessWidget {
  const _EmailContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 1,
          child: Container(
            margin: const EdgeInsets.all(110),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.skillStartGradient,
                  AppColors.skillEndGradient,
                ],
              ),
            ),
            width: 1000,
            height: 500,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(128),
          margin: const EdgeInsets.all(128),
          decoration: const BoxDecoration(
            color: AppColors.emailContactContainer,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  AppStrings.contactMe.toUpperCase(),
                  style: AppTheme.contactMeTextStyle,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ContactTextFormFieldWidget(
                      text: AppStrings.whatName,
                      maxLines: 1,
                    ),
                    ContactTextFormFieldWidget(
                      text: AppStrings.whatEmail,
                      maxLines: 1,
                    ),
                    ContactTextFormFieldWidget(
                      text: AppStrings.message,
                      maxLines: 5,
                    ),
                    SendMessageBtnWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

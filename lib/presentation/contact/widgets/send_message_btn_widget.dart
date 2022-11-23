import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_strings.dart';

class SendMessageBtnWidget extends StatefulWidget {
  const SendMessageBtnWidget({Key? key}) : super(key: key);

  @override
  State<SendMessageBtnWidget> createState() => _SendMessageBtnWidgetState();
}

class _SendMessageBtnWidgetState extends State<SendMessageBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 320,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            AppColors.sendMessageBtn,
          ),
        ),
        onPressed: () {},
        child: Text(AppStrings.sendMessage.toUpperCase()),
      ),
    );
  }
}

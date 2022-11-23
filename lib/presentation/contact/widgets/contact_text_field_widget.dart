import 'package:flutter/material.dart';
import 'package:web_profile/res/app_colors.dart';

class ContactTextFormFieldWidget extends StatefulWidget {
  final String text;
  final int maxLines;

  const ContactTextFormFieldWidget({
    Key? key,
    required this.text,
    required this.maxLines,
  }) : super(key: key);

  @override
  State<ContactTextFormFieldWidget> createState() =>
      _ContactTextFormFieldState();
}

class _ContactTextFormFieldState extends State<ContactTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      cursorColor: AppColors.activeTextFormField,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          fontSize: 24,
          color: AppColors.inactiveTextFormField,
        ),
        floatingLabelStyle: const TextStyle(
          color: AppColors.activeTextFormField,
          fontSize: 20,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inactiveTextFormField,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.activeTextFormField,
          ),
        ),
        label: Text(widget.text),
      ),
    );
  }
}

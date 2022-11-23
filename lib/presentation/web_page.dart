import 'package:flutter/material.dart';
import 'package:web_profile/presentation/my_work/my_work_screen.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MyWorkScreen());
  }
}

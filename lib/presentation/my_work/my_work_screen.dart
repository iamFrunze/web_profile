import 'package:flutter/material.dart';
import 'package:web_profile/presentation/about/widgets/arrow_next_widget.dart';
import 'package:web_profile/presentation/my_work/widgets/works_widget.dart';
import 'package:web_profile/res/app_colors.dart';
import 'package:web_profile/res/app_strings.dart';
import 'package:web_profile/res/app_theme.dart';

class MyWorkScreen extends StatefulWidget {
  const MyWorkScreen({Key? key}) : super(key: key);

  @override
  State<MyWorkScreen> createState() => _MyWorkScreenState();
}

class _MyWorkScreenState extends State<MyWorkScreen> {
  final bool isNext = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dmBackground,
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text(
                AppStrings.myWorks,
                style: AppTheme.myWorkTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Visibility(
                  visible: !isNext,
                  child: Expanded(
                    flex: 1,
                    child: ArrowNextWidget(isNext: isNext),
                  ),
                ),
                const Expanded(
                  flex: 15,
                  child: WorksWidget(),
                ),
                Visibility(
                  visible: isNext,
                  child: Expanded(
                    flex: 1,
                    child: ArrowNextWidget(isNext: isNext),
                  ),
                ),
              ],
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

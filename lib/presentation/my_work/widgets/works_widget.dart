import 'package:flutter/material.dart';
import 'package:web_profile/presentation/my_work/widgets/work_element_widget.dart';
import 'package:web_profile/res/app_assets.dart';
import 'package:web_profile/res/app_strings.dart';

class WorksWidget extends StatelessWidget {
  const WorksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        WorkElementWidget(
          imgPath: AppAssets.fp,
          title: AppStrings.fpTitle,
          desc: AppStrings.fpDesc,
        ),
        WorkElementWidget(
          imgPath: AppAssets.sr,
          title: AppStrings.srTitle,
          desc: AppStrings.srDesc,
        ),
        WorkElementWidget(
          imgPath: AppAssets.zefire,
          title: AppStrings.zefireTitle,
          desc: AppStrings.zefireDesc,
        ),
        WorkElementWidget(
          imgPath: AppAssets.devRev,
          title: AppStrings.drTitle,
          desc: AppStrings.drDesc,
        ),
      ],
    );
  }
}

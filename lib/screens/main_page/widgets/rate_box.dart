import 'package:flutter/material.dart';

import 'package:profile_activities_task/utilities/constants/app_assets.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/extensions/sized_box_extension.dart';

class RateBox extends StatelessWidget {

  const RateBox({
    Key? key,
    required this.rateCount,
  }) : super(key: key);
  final int rateCount;
   @override
   Widget build(BuildContext context) {
       return Container(
              padding: AppPaddings.t4r12b4l8,
              width: 78,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.likeCountBG,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssets.likeIcon,
                  4.w,
                  Text("$rateCount"),
                ],
              ),
            );
  }
}

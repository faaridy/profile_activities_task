import 'package:flutter/material.dart';

import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';
import 'package:profile_activities_task/utilities/extensions/material_state_properity_all.dart';

class ModalTopPart extends StatelessWidget {

  const ModalTopPart({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
   @override
   Widget build(BuildContext context) {
       return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,style: AppTextStyles.w500s20Black,),
                CloseButton(
                  style: ButtonStyle(
                    backgroundColor: AppColors.iconBtnColor.mspAll
                  ),
                ),
              ],
            );
  }
}

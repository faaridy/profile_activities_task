import 'package:flutter/material.dart';
import 'package:profile_activities_task/screens/main_page/widgets/block_modal.dart';
import 'package:profile_activities_task/screens/main_page/widgets/complain_modal.dart';
import 'package:profile_activities_task/screens/main_page/widgets/notfication.dart';
import 'package:profile_activities_task/screens/main_page/widgets/notfication_modal.dart';
import 'package:profile_activities_task/utilities/constants/app_assets.dart';
import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';

class NotficationsBox extends StatelessWidget {

  const NotficationsBox({ super.key });

   @override
   Widget build(BuildContext context) {
       return Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height - 250,
            left: MediaQuery.of(context).size.width - 250,
            child: Container(
              width: 240,
              height: 146,
              decoration: AppBoxDecoration.notficationBoxDecoration,
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Notfication(text: "Bildirişləri bağla", textStyle: AppTextStyles.w600s16Black,icon: AppAssets.notficationOffIcon, child: NotficationModal(),),
                SizedBox(height: 1,child: Divider(color: AppColors.iconBtnColor,)),
                Notfication(text: "Blokla", textStyle: AppTextStyles.w600s16Black, icon: AppAssets.blockPersonIcon, child: BlockModal()),
                SizedBox(height: 1,child: Divider(color: AppColors.iconBtnColor,)),
                Notfication(text: "Şikayət et", textStyle: AppTextStyles.w600s16Red, icon: AppAssets.flagIcon, child: ComplainModal())
              ],
            ),),)
          
        ],
       );
  }
}
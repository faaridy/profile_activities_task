import 'package:flutter/material.dart';
import 'package:profile_activities_task/screens/main_page/widgets/global_button.dart';
import 'package:profile_activities_task/screens/main_page/widgets/image_box.dart';
import 'package:profile_activities_task/screens/main_page/widgets/modal_top_part.dart';
import 'package:profile_activities_task/utilities/constants/app_assets.dart';
import 'package:profile_activities_task/utilities/constants/app_borders.dart';
import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';
import 'package:profile_activities_task/utilities/extensions/sized_box_extension.dart';

class SendComplain extends StatelessWidget {

  const SendComplain({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
        decoration: AppBoxDecoration.modalDecoration,
        padding: AppPaddings.all16,
        width: MediaQuery.of(context).size.width,
        height: 330,
        child: Column(
          children: [
            const ModalTopPart(text: "Şikayət et",),
            20.h,
            const ImageBox(image: AppAssets.checkImage),
            const Text("Şikayətin göndərildi",style: AppTextStyles.w500s24Black,),
            20.h,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GlobalButton(text: "Bağla", color: AppColors.white, textStyle: AppTextStyles.w700s16Black, borderSide: AppBorders.btnBorderSide,
              onPressed: (){
                Navigator.pop(context);
              },),
            )
          ],
        ),
       );
  }
}
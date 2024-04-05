import 'package:flutter/material.dart';
import 'package:profile_activities_task/data/models/personal_data.dart';
import 'package:profile_activities_task/screens/main_page/widgets/global_button.dart';
import 'package:profile_activities_task/screens/main_page/widgets/global_icon_button.dart';
import 'package:profile_activities_task/screens/main_page/widgets/modal_personal_part.dart';
import 'package:profile_activities_task/screens/main_page/widgets/modal_top_part.dart';
import 'package:profile_activities_task/screens/main_page/widgets/rate_box.dart';
import 'package:profile_activities_task/utilities/constants/app_borders.dart';
import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';
import 'package:profile_activities_task/utilities/extensions/sized_box_extension.dart';

class ProfilModal extends StatelessWidget {

  const ProfilModal({
    Key? key,
    required this.personalData,
  }) : super(key: key);
  final PersonalData personalData;
   @override
   Widget build(BuildContext context) {
    
       return Container(
        decoration: AppBoxDecoration.modalDecoration,
        padding: AppPaddings.t6r16b16l16,
        width: MediaQuery.of(context).size.width,
        height: 531,
        child: Column(
          children: [
            5.h,
            const ModalTopPart(text: "Profil",),
            10.h,
            ModalPersonalPart(
              name: personalData.name, 
              surname: personalData.surname, 
              icon: personalData.icon, 
              distance: personalData.distance, 
              image: personalData.image, 
              age: personalData.age),
            20.h,
            RateBox(rateCount: personalData.likeCount),
            25.h,
            Container(
              height: 102,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1,color: AppColors.grey),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Bio",textAlign: TextAlign.start,style: AppTextStyles.w500s14Grey,),
                  Text(personalData.bio,style: AppTextStyles.w500s18Grey,)
                ],
              ),
            ),
            15.h,
            Row(
              children: [
                const Expanded(
                  child: GlobalButton(text: "Mesaj Göndər",color: AppColors.orange,textStyle: AppTextStyles.w700s16White,borderSide: AppBorders.orangeBtnBorderSide,)),
                  15.w,
                  const GlobalIconButton(),
              ],
            )
            ]
          ,
        ),
       );
  }
}

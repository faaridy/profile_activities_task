import 'package:flutter/material.dart';
import 'package:profile_activities_task/screens/main_page/widgets/close_notfication_modal.dart';
import 'package:profile_activities_task/screens/main_page/widgets/global_button.dart';
import 'package:profile_activities_task/utilities/constants/app_borders.dart';
import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';
import 'package:profile_activities_task/utilities/extensions/sized_box_extension.dart';

class NotficationModal extends StatelessWidget {

  const NotficationModal({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
        decoration: AppBoxDecoration.modalDecoration,
        padding: AppPaddings.all16,
        width: MediaQuery.of(context).size.width,
        height: 206,
        child: Column(
          children: [
            const Text("Bu şəxs üçün bildirişləri bağlamaq istədiyinizdən əminsiniz?",style: AppTextStyles.w500s28Black,),
            Row(
              children: [
                Expanded(
                  child: GlobalButton(
                    text: "Ləğv et", 
                    color: AppColors.white, 
                    textStyle: AppTextStyles.w700s16Black,
                    borderSide: AppBorders.btnBorderSide,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    ),),
                10.w,
                Expanded(
                  child: GlobalButton(
                    text: "Bəli, bağla", 
                    color: AppColors.orange, 
                    textStyle: AppTextStyles.w700s16White,
                    borderSide: AppBorders.orangeBtnBorderSide,
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                        barrierColor: Colors.transparent,
                        useSafeArea: true,
                        context: context, 
                        builder: (context) => const CloseNotficationModal());
                    },
                    ),)
              ],
            )
          ],
        ),
       );
  }
}
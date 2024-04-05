import 'package:flutter/material.dart';
import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';

class CloseNotficationModal extends StatelessWidget {

  const CloseNotficationModal({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
        decoration: AppBoxDecoration.modalDecoration,
        padding: AppPaddings.t4r16b12l16,
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Container(
          height: 56,
          padding: AppPaddings.t12r16b12l16,
          decoration: AppBoxDecoration.closeNotficationBoxDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Bildirişlər bağlandı",style: AppTextStyles.w600s16White,),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
               child: const Text("Ləğv et",style: AppTextStyles.w500s16Pink,))
            ],
          ),
        ),
       );
  }
}
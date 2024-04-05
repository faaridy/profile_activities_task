import 'package:flutter/material.dart';
import 'package:profile_activities_task/data/models/personal_data.dart';
import 'package:profile_activities_task/screens/main_page/widgets/image_box.dart';
import 'package:profile_activities_task/screens/main_page/widgets/profil_modal.dart';
import 'package:profile_activities_task/utilities/constants/app_assets.dart';
import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';
import 'package:profile_activities_task/utilities/extensions/sized_box_extension.dart';

class UserBoxItems extends StatelessWidget {

  const UserBoxItems({
    Key? key,
    required this.personalData,
  }) : super(key: key);
  final PersonalData personalData;
   @override
   Widget build(BuildContext context) {
      
       return Column(
         children: [
           Container(
            decoration: AppBoxDecoration.profileBoxDecoration,
            width: MediaQuery.of(context).size.width,
            height: 64,
            child: Row(
              children: [
                Expanded(
                  child: ImageBox(image: personalData.image,margin: const EdgeInsets.all(10),)),
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      useSafeArea: true,
                      context: context, 
                      builder: (context) => ProfilModal(personalData: personalData,));
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Row(
                          children: [
                            Text("${personalData.name} ${personalData.surname}, ${personalData.age}",style: AppTextStyles.w600s18Black,),
                            5.w,
                            Image.asset(personalData.icon ?? AppAssets.emptyImage),
                          ],
                        )),
                        Expanded(child: Text(personalData.distance,style: AppTextStyles.w500s14Grey,)),
                      ],
                      ),
                    ),
                  )),
                Expanded(child: Image.asset(AppAssets.messageIcon)),
              ],
            ),
           ),
           10.h,
         ],
       );
  }
}

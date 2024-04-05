import 'package:flutter/material.dart';
import 'package:profile_activities_task/screens/main_page/widgets/image_box.dart';
import 'package:profile_activities_task/utilities/constants/app_assets.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';
import 'package:profile_activities_task/utilities/extensions/sized_box_extension.dart';

class ModalPersonalPart extends StatelessWidget {

  const ModalPersonalPart({
    Key? key,
    required this.name,
    required this.surname,
    required this.icon,
    required this.distance,
    required this.image,
    required this.age,
  }) : super(key: key);
  final String name;
  final String surname;
  final String? icon;
  final String distance;
  final String image;
  final int age;
   @override
   Widget build(BuildContext context) {
       return Column(
        children: [
          ImageBox(image: image),
          10.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                10.h,
                Text("$name $surname, $age",style: AppTextStyles.w600s24Black,),
                6.w,
                Image.asset(icon ?? AppAssets.emptyImage),
              ],
            ),
            Text(distance,style: AppTextStyles.w500s18Grey,),
        ],
       );
  }
}

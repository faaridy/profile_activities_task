import 'package:flutter/material.dart';
import 'package:profile_activities_task/screens/main_page/widgets/notfications_box.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/extensions/material_state_properity_all.dart';

class GlobalIconButton extends StatelessWidget {

  const GlobalIconButton({ super.key });

   @override
   Widget build(BuildContext context) {
       return SizedBox(
                  width: 48,
                  height: 48,
                  child: IconButton(
                    onPressed: (){
                      showDialog(
                        barrierColor: Colors.transparent,
                        context: context, 
                        builder: (context) => const NotficationsBox());
                    }, 
                    style: ButtonStyle(
                      shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2,color: AppColors.iconBtnColor),
                      borderRadius: BorderRadius.circular(100)
                      ).mspAll,
                    ),
                    icon: const Icon(Icons.more_horiz)),
                );
  }
}
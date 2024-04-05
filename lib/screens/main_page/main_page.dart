import 'package:flutter/material.dart';
import 'package:profile_activities_task/screens/main_page/widgets/user_box_view.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';

class MainPage extends StatelessWidget {

  const MainPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        backgroundColor: AppColors.bg,
           body: Container(
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const UserBoxView(),
           ),
       );
  }
}
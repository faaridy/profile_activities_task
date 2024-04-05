import 'package:flutter/material.dart';
import 'package:profile_activities_task/data/models/personal_data.dart';
import 'package:profile_activities_task/screens/main_page/widgets/user_box_items.dart';

class UserBoxView extends StatelessWidget {

  const UserBoxView({ super.key });

   @override
   Widget build(BuildContext context) {
      final items = PersonalData.personalData;
       return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (_,i){
                    return UserBoxItems(personalData: items[i]);
                  },
                ),
              ],
            );
  }
}
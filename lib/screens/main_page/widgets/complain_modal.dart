import 'package:flutter/material.dart';
import 'package:profile_activities_task/screens/main_page/widgets/global_button.dart';
import 'package:profile_activities_task/screens/main_page/widgets/send_complain.dart';
import 'package:profile_activities_task/utilities/constants/app_borders.dart';
import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/constants/app_text_styles.dart';
import 'package:profile_activities_task/utilities/extensions/material_state_properity_all.dart';



class ComplainModal extends StatefulWidget {

  const ComplainModal({ super.key });

  @override
  State<ComplainModal> createState() => _ComplainModalState();
}

class _ComplainModalState extends State<ComplainModal> {
  int _selectedValue = 1;
   @override
   Widget build(BuildContext context) {
       return Container(
        decoration: AppBoxDecoration.modalDecoration,
        padding: AppPaddings.t6r16b16l16,
        width: MediaQuery.of(context).size.width,
        height: 632,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CloseButton(style: ButtonStyle(
                    backgroundColor: AppColors.iconBtnColor.mspAll
                  ),),
            const Text("Səbəb seçin",style: AppTextStyles.w500s18Grey,),
            RadioListTile( 
              activeColor: AppColors.orange,
            title: const Text('Profil fotosunda çılpaqlıq, intim və etik olmayan məzmun var',style: AppTextStyles.w500s16Black,),
            value: 1,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ),
          RadioListTile( 
            activeColor: AppColors.orange,
            title: const Text('İstifadəçi adında uyğun olmayan ifadələr, söyüş, təhqir var',style: AppTextStyles.w500s16Black,),
            value: 2,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ), 
          RadioListTile( 
            activeColor: AppColors.orange,
            title: const Text('Mesajlarında kobudluq, əxlaqsız təklif və söyüş var',style: AppTextStyles.w500s16Black,),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ), 
          RadioListTile( 
            activeColor: AppColors.orange,
            title: const Text('İstifadəçi məni konum (?) bilgisi ilə təqib edir',style: AppTextStyles.w500s16Black,),
            value: 4,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ), 
          RadioListTile( 
            activeColor: AppColors.orange,
            title: const Text('Məni və ya başqalarını təhqir edir',style: AppTextStyles.w500s16Black,),
            value: 5,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ), 
          RadioListTile( 
            activeColor: AppColors.orange,
            title: const Text('Mən və başqa birinin foto və ad soyadını istifadə edir',style: AppTextStyles.w500s16Black,),
            value: 6,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ), 
          RadioListTile( 
            activeColor: AppColors.orange,
            title: const Text('Spam / Fırıldaqçılıq',style: AppTextStyles.w500s16Black,),
            value: 7,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ), 
           RadioListTile( 
            activeColor: AppColors.orange,
            title: const Text('Başqa səbəb',style: AppTextStyles.w500s16Black,),
            value: 8,
            groupValue: _selectedValue,
            onChanged: (value) { 
              setState(() { 
                _selectedValue = 
                    value!;
              }); 
            }, 
          ), 
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: GlobalButton(
              text: "Göndər", 
              color: AppColors.orange, 
              textStyle: AppTextStyles.w700s16White, 
              borderSide: AppBorders.orangeBtnBorderSide,
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context, 
                  builder: (context) => const SendComplain());
              },
              ))
          ],
        ),
       );
  }
}
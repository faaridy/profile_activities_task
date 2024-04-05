import 'package:flutter/material.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/extensions/sized_box_extension.dart';

class Notfication extends StatelessWidget {

  const Notfication({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.child,
    required this.icon,
  }) : super(key: key);
  final Widget child;
  final Widget icon;
  final String text;
  final TextStyle textStyle;
   @override
   Widget build(BuildContext context) {
       return GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context, 
                      builder: (context) => child);
                  },
                  child: Container(
                    height: 48,
                    padding: AppPaddings.t12r16b12l16,
                    child: Row(
                      children: [
                        icon,
                        10.w,
                        Text(text,style: textStyle,)
                      ],
                    ),
                  ),
                );
  }
}

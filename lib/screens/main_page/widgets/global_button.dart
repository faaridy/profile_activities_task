import 'package:flutter/material.dart';
import 'package:profile_activities_task/utilities/constants/app_paddings.dart';
import 'package:profile_activities_task/utilities/extensions/material_state_properity_all.dart';

class GlobalButton extends StatelessWidget {

  const GlobalButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
    required this.textStyle,
    required this.borderSide,
  }) : super(key: key);
  final String text;
  final Color color;
  final Function()? onPressed;
  final TextStyle textStyle;
  final BorderSide borderSide;
   @override
   Widget build(BuildContext context) {
       return SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: onPressed, 
                      style: ButtonStyle(
                        padding: AppPaddings.t12r16b12l16.mspAll,
                        backgroundColor: color.mspAll,
                        shape: RoundedRectangleBorder(
                          side: borderSide,
                          borderRadius: BorderRadius.circular(8)
                        ).mspAll
                      ),
                      child: Text(text,style: textStyle,)),
                  );
  }
}

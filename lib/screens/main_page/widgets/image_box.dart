import 'package:flutter/material.dart';

import 'package:profile_activities_task/utilities/constants/app_box_decoration.dart';

class ImageBox extends StatelessWidget {

  const ImageBox({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.margin
  }) : super(key: key);
  final String image;
  final int? height;
  final int? width;
  final EdgeInsetsGeometry? margin;
   @override
   Widget build(BuildContext context) {
       return Container(
              clipBehavior: Clip.antiAlias,
              margin: margin,
              height: 128,
              width: 128,
              decoration: AppBoxDecoration.imageDecoration,
              child: Image.asset(image)
            );
  }
}

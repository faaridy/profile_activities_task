import 'package:flutter/material.dart';
import 'package:profile_activities_task/utilities/constants/app_border_radius.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';

class AppBoxDecoration { 
  AppBoxDecoration._(); 

  static Decoration profileBoxDecoration = BoxDecoration(
    boxShadow: const [
        BoxShadow(
        color: AppColors.shadowColor,
        blurRadius: 16,
        offset: Offset(0, 4), // changes position of shadow
      ),
    ],
    color: AppColors.white,
    borderRadius: AppBorderRadius.borderRadius8,
);

  static Decoration notficationBoxDecoration = BoxDecoration(
    boxShadow: const [
        BoxShadow(
        color: AppColors.shadowColor,
        blurRadius: 16,
        offset: Offset(0, 4), 
      ),
    ],
    color: AppColors.white,
    borderRadius: AppBorderRadius.borderRadius8,
);

  static Decoration closeNotficationBoxDecoration = BoxDecoration(
    boxShadow: const [
        BoxShadow(
        color: AppColors.shadowColor,
        blurRadius: 16,
        offset: Offset(0, 4), 
      ),
    ],
    color: AppColors.modalBgBlack,
    borderRadius: AppBorderRadius.borderRadius8,
);
  
  static const Decoration imageDecoration = BoxDecoration(
    shape: BoxShape.circle
);

static const Decoration modalDecoration = BoxDecoration(
  color: AppColors.white,
  borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
  );
 
}
import 'package:flutter/material.dart';
import 'package:profile_activities_task/utilities/constants/app_colors.dart';

class AppAssets { 
  AppAssets._(); 

  static const _png = "assets/png";
  static const _icons = "assets/icons";

  static const user1Image = "$_png/user1.png";
  static const user2Image = "$_png/user2.png";
  static const user3Image = "$_png/user3.png";
  static const emptyImage = "$_png/transparent.png";
  static const checkImage = "$_png/check.png";

  static const verifiedIcon = "$_icons/verifiedicon.png";
  static const vipIcon = "$_icons/vipicon.png";
  static const messageIcon = "$_icons/message.png";
  static const likeIcon = Icon(Icons.favorite,color: AppColors.orange,);
  static const notficationOffIcon = Icon(Icons.notifications_off_outlined,color: AppColors.grey,);
  static const blockPersonIcon = Icon(Icons.person_off_outlined,color: AppColors.grey,);
  static const flagIcon = Icon(Icons.flag_rounded,color: AppColors.orange,);

}
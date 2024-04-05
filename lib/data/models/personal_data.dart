import 'package:profile_activities_task/utilities/constants/app_assets.dart';

class PersonalData {

  PersonalData({
    required this.name,
    required this.surname,
    required this.age,
    required this.distance,
    required this.image,
    this.icon,
    required this.likeCount,
    required this.bio,
  }
  );

  final String name;
  final String surname;
  final int age;
  final String distance;
  final String image;
  final String? icon;
  final int likeCount;
  final String bio;

  static List<PersonalData> personalData = [
    PersonalData(
      name: "Sevinc", 
      surname: "Alieva", 
      age: 23, 
      distance: "Yaxınlıqda", 
      image: AppAssets.user1Image, 
      icon: AppAssets.verifiedIcon, 
      likeCount: 100, 
      bio: "Cat-lover, Designer, Weekend fan and biologist"
    ),
    PersonalData(
      name: "Gunel", 
      surname: "M-va", 
      age: 24, 
      distance: "100 metr", 
      image: AppAssets.user2Image, 
      icon: AppAssets.vipIcon, 
      likeCount: 152, 
      bio: "Cat-lover, Designer, Weekend fan and biologist"
    ),
    PersonalData(
      name: "Shefeg", 
      surname: "Memmedli", 
      age: 30, 
      distance: "150 metr", 
      image: AppAssets.user3Image,
      likeCount: 150, 
      bio: "Cat-lover, Designer, Weekend fan and biologist"
    ),
  ];

}

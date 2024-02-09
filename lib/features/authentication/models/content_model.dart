import 'package:nu_go_app/utils/constants/images.dart';

class OnboardingContent {
  int count;
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.count,
      required this.image,
      required this.title,
      required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      count: 1,
      title: 'Hassle Free Browsing',
      image: onboardOne,
      description:
          "Browse your departmentalized event without any restriction and hassle."),
  OnboardingContent(
      count: 2,
      title: "Quality Food",
      image: onboardTwo,
      description:
          "Browse your departmentalized event without any restriction and hassle."),
  OnboardingContent(
      count: 3,
      title: "Quality Food",
      image: onboardThree,
      description:
          "Browse your departmentalized event without any restriction and hassle."),
];

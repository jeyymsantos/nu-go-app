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
      image: 'assets/images/onboarding/onboard_one.png',
      description:
          "Browse your departmentalized event without any restriction and hassle."),
  OnboardingContent(
      count: 2,
      title: "Quality Food",
      image: 'assets/images/onboarding/onboard_two.png',
      description:
          "Browse your departmentalized event without any restriction and hassle."),
  OnboardingContent(
      count: 3,
      title: "Quality Food",
      image: 'assets/images/onboarding/onboard_three.png',
      description:
          "Browse your departmentalized event without any restriction and hassle."),
];

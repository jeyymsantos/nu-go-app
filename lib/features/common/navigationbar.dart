import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/event/explore.dart';
import 'package:nu_go_app/features/home/dashboard.dart';
import 'package:nu_go_app/utils/constants/colors.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int pageIndex = 0;

  List<Widget> pages = [
    const Dashboard(),
    const Explore(),
  ];
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: NUGold,
      color: NUBlue,
      animationDuration: const Duration(milliseconds: 200),
      items: const [
        Icon(
          Icons.home,
          color: NUGold,
        ),
        Icon(
          Icons.favorite,
          color: NUGold,
        ),
        Icon(
          Icons.explore,
          color: NUGold,
        ),
        Icon(
          Icons.supervised_user_circle,
          color: NUGold,
        ),
      ],
    );
  }
}

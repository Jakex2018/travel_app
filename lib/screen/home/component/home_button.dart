import 'package:flutter/material.dart';
import 'package:travel_app/components/bottom_nav_bar.dart';
import 'package:travel_app/constant.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: CircleAvatar(
              radius: 25,
              backgroundColor: kPrimaryColor,
              child: Center(
                child: BottomNavBarIcons(IconTitle: Icon(Icons.home, color: Colors.white, size: 30)),
              ),
            ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:travel_app/components/app_Bar_Home.dart';
import 'package:travel_app/components/bottom_nav_bar.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/screen/home/body.dart';
import 'package:travel_app/screen/home/component/home_button.dart';
class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
          child: AppBarBuildHome(),
        ),
      ),
      body: const BodyHome(),
      floatingActionButton: const HomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
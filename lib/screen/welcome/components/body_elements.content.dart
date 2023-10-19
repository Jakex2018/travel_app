import 'package:flutter/material.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/screen/home/screen_home.dart';
import 'package:travel_app/screen/welcome/components/button_welcome.dart';

class BodyElementsContent extends StatelessWidget {
  const BodyElementsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,left: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/logo.png',fit: BoxFit.contain,height: 170,),
          SizedBox(
            height: MediaQuery.of(context).size.height *0.1),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeTitle(title: 'Experience.', fontWeight: FontWeight.bold, color:kbackgroundColor, fontSize: 60, textDecoration: TextDecoration.none,),
                WelcomeTitle(title: 'Travel.', fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 60, textDecoration: TextDecoration.none,),
                WelcomeTitle(title: 'Awesome.', fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 60, textDecoration: TextDecoration.none,)
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *0.25),
          InkWell(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const ScreenHome()));
          },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: aDefaultPadding+10),
              child: ButtonWelcome(),
            ),
          )
        ],
      ),
    );
  }
}
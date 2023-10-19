// ignore: file_names

import 'package:flutter/material.dart';
import 'package:travel_app/components/button_four.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/constant.dart';
// ignore: non_constant_identifier_names
AppBar AppBarBuildHome() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const ButtonFour(icon: Icon(Icons.menu,color: Colors.black, size: 30,),),
      centerTitle: true,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_city, color: kPrimaryColor,),
          WelcomeTitle(title: 'USA', fontWeight:FontWeight.bold , color: Colors.black, fontSize: 25, textDecoration: TextDecoration.none),
        ],
      ),
      actions: const [
        ButtonFour(icon: Icon(Icons.search,color: Colors.black, size: 30))
      ],
    );
  }
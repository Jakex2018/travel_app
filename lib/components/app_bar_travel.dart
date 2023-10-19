// ignore: file_names
import 'package:flutter/material.dart';
import 'package:travel_app/components/button_four.dart';
import 'package:travel_app/constant.dart';
// ignore: non_constant_identifier_names
AppBar AppBarBuildTravel() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const ButtonFour(icon: Icon(Icons.arrow_back,color: Colors.black, size: 30,),),
      actions: const [
        ButtonFour(icon: Icon(Icons.favorite,color: kPrimaryColor, size: 30))
      ],
    );
  }
import 'package:flutter/material.dart';

class OverlayApp extends StatelessWidget {
  const OverlayApp({
    super.key, required this.opacity,
  });
  final double opacity;
  @override
  Widget build(BuildContext context) {
    return Container(
     width: MediaQuery.of(context).size.width*0.4,
     height: 180,
     decoration: BoxDecoration(
      color: Colors.black.withOpacity(opacity), 
      borderRadius: BorderRadius.circular(20)
     ),// Ajusta la opacidad según sea necesario
    );
  }
}

class WelcomeSubItems extends StatelessWidget {
  const WelcomeSubItems({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text(title,style: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15
      ),),
    );
  }
}
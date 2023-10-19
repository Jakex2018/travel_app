import 'package:flutter/material.dart';


class StarInfoItem extends StatelessWidget {
  const StarInfoItem({
    super.key, required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon(Icons.star , color:color),
        const SizedBox(width: 3),
        const Text('4.7', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
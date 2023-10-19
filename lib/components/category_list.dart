import 'package:flutter/material.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/constant.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  List categories =['Best Places' , 'Recomended' ,'Most Places' , 'All'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal:15),
              margin: EdgeInsets.only(left:aDefaultPadding ,
                right: index == categories.length -1 ? 10: 0),
              decoration: BoxDecoration(
                color: index == selectIndex ? kPrimaryColor: kPrimaryColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(15)
              ),
              child:WelcomeTitle(title: categories[index], fontWeight:FontWeight.bold, color: Colors.white, fontSize: 15, textDecoration: TextDecoration.none)
            ),
          ),
        ),
      ),
    );
  }
}
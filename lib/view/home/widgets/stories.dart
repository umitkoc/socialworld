import 'package:flutter/material.dart';
import 'package:socialworld/view/home/widgets/story.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
      boxShadow:[
        BoxShadow(
          color:Colors.grey[200],
          offset: Offset(0,40),blurRadius: 15)
      ]),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
        ],
      ),
    );
  }
}

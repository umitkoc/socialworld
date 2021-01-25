import 'package:flutter/material.dart';

class Appbars extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.camera),
        onPressed: () {},
      ),
      title: Text("Social World"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.ac_unit_sharp),
          onPressed: () {},
        )
      ],
    );
  }
}
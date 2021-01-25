import 'package:flutter/material.dart';
import 'package:socialworld/view/home/main/home.dart';
import 'package:socialworld/view/profile/main/profile.dart';

class Bottomnavigations extends StatefulWidget {
  @override
  _BottomnavigationsState createState() => _BottomnavigationsState();
}

class _BottomnavigationsState extends State<Bottomnavigations> {
  var _index = 1;
  void pagesRoute(int index) {
    setState(() {
      if (index == 3) {
        return Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Profile()));
      } else if (index == 2) {
        return Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Home()));
      } else {
        return Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Home()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      elevation: 0,
      currentIndex: _index,
      onTap: pagesRoute,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "search",
          icon: Icon(Icons.search),
           
        ),
        BottomNavigationBarItem(
          label: "home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "profile",
          icon: Icon(Icons.account_circle),
        )
      ],
    );
  }
}

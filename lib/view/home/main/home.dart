import 'package:flutter/material.dart';
import 'package:socialworld/view/home/widgets/appbar.dart';
import 'package:socialworld/view/home/widgets/cardlist.dart';
import 'package:socialworld/view/search/main/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _index = 1;
  TextEditingController _controller = TextEditingController();
  void pageroute(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbars(),
        body: bodys(_index),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          currentIndex: _index,
          onTap: pageroute,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "profile", icon: Icon(Icons.account_circle))
          ],
        ));
  }

  PreferredSize appbars() =>
      PreferredSize(preferredSize: Size.fromHeight(50), child: Appbars());

  Container bodys(int index) {
    if (index == 0) {
      return search();
    } else if (index == 1) {
      return home();
    } else {
      return profile();
    }
  }

  Container home() => Container(child: Column(children: [Cardlist()]));

  Container search() =>
      Container(child: Column(children: [Search(controller: _controller)]));

  Container profile() => Container(
          child: Column(
        children: [
          Expanded(flex: 1, child: TopProfile()),
          Expanded(
            flex: 3,
            child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(25, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGFyayUyMHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                              fit: BoxFit.cover)),
                    ),
                  );
                })),
          )
        ],
      ));
}

class TopProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey[200], offset: Offset(0, 5), blurRadius: 5)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120, top: 45),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Lorem İpsum",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.supervisor_account, size: 45),
                onPressed: () {},
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Friends"),
          )
        ],
      ),
    );
  }
}

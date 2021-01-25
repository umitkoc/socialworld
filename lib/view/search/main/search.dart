import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
    @required TextEditingController controller,
  }) : _controller = controller, super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(offset: Offset(0, 2), blurRadius: 5)],
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          controller: _controller,
          autofocus: true,
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {
                  print(_controller.text);
                  _controller.clear();
                }),
          ),
        ),
      ),
    );
  }
}

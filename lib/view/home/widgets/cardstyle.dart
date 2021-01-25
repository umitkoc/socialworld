import 'package:flutter/material.dart';

import 'cards.dart';

class Cardstyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [Cards(), Cards(), Cards(), Cards()],
    );
  }
}
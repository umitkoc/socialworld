import 'package:flutter/material.dart';

import 'cardstyle.dart';

class Cardlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.83,
      width: double.infinity,
      child: Cardstyle(),
    );
  }
}

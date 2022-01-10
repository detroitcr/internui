import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/text_widget.dart';

import '../constants.dart';

class OpacityContainer extends StatelessWidget {
  const OpacityContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, bottom: 15),
      alignment: Alignment.bottomLeft,
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black.withOpacity(0.05),
          Colors.black.withOpacity(0.1),
          Colors.black.withOpacity(0.7),
        ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
      ),
      child: TextWidget(
        text: title,
        color: Colors.white,
        size: 32,
      ),
      // color: Colors.black,
    );
  }
}

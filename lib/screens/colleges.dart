import 'package:internui/widgets/best_colleges_widget.dart';
import 'package:internui/widgets/best_company_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CollegeScreen extends StatelessWidget {
  const CollegeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Page', style: kAppBarStyle),
        ),
        body: ListView(
          children: [
            BestColleges(),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            BestCompany(),
          ],
        ));
  }
}

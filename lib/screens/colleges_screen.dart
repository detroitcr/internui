import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/best_colleges_widget.dart';
import 'package:internui/widgets/best_company_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Detail screen',
          backgroundColor: Colors.purple,
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

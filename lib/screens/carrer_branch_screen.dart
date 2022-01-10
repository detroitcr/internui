import 'package:internui/models/career_countries_model.dart';
import 'package:internui/screens/countries_screen.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/text_widget.dart';

import '../constants.dart';

class CareerBranch extends StatelessWidget {
  const CareerBranch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Choose your Branch',
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
            itemCount: career.length,
            itemBuilder: (context, index) {
              final data = career[index];
              return ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CountriesScreen();
                  }));
                },
                leading: CircleAvatar(
                    child: Text(data.toString().toString().split(" ")[0][0])),
                title: TextWidget(
                  text: data.name,
                  color: Colors.black,
                  size: 16,
                ),
                subtitle: Text('Available Colleges: ' + data.coursecount),
              );
            }));
  }
}

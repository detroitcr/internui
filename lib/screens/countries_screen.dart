import 'package:internui/models/career_countries_model.dart';
import 'package:internui/screens/colleges_screen.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/text_widget.dart';
import '../constants.dart';

class CountriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Select one Country ',
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            final data = countries[index];
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen();
                }));
              },
              leading: CircleAvatar(
                  child: Text(data.toString().toString().split(" ")[0][0])),
              title: TextWidget(
                text: data,
                color: Colors.black,
                size: 16,
              ),
            );
          },
        ),
      ),
    );
  }
}

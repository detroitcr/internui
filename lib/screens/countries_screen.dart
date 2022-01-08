import 'package:internui/models/career_countries_model.dart';
import 'package:internui/screens/colleges.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CountriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text('Top Countries for Science', style: kAppBarStyle)),
      body: Container(
        child: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            final data = countries[index];
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CollegeScreen();
                }));
              },
              leading: CircleAvatar(
                  child: Text(data.toString().toString().split(" ")[0][0])),
              title: Text(
                data,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            );
          },
        ),
      ),
    );
  }
}

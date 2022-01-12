import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:internui/models/career_countries_model.dart';
import 'package:internui/screens/colleges_screen.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/list_tile_widget.dart';
import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/mytext_widget.dart';
import 'package:internui/widgets/text_widget.dart';

class CountriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Select one Country ',
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            final data = countries[index];
            return MyListTile(
              ontap: () {
                Get.to(() => DetailScreen());
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

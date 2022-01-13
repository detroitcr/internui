import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:internui/models/career_countries_model.dart';
import 'package:internui/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/text_widget.dart';

import 'main_drawer_screen.dart';

class CountriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Select one Country ',
        backgroundColor: Colors.purple,
      ),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: GridView.builder(
          itemCount: countries.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Get.to(() => DetailScreen()),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                // color: Colors.blue,
                child: Center(
                    child: TextWidget(
                  text: countries[index],
                  color: Colors.white,
                  size: 3,
                  fontWeight: FontWeight.w400,
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}

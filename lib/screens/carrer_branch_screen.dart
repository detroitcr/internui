import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:internui/models/career_countries_model.dart';
import 'package:internui/screens/countries_screen.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/list_tile_widget.dart';
import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/mytext_widget.dart';
import 'package:internui/widgets/text_widget.dart';

class CareerBranch extends StatelessWidget {
  const CareerBranch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          text: 'Choose your Branch',
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
            itemCount: career.length,
            itemBuilder: (context, index) {
              final data = career[index];
              return MyListTile(
                ontap: () {
                  Get.to(() => CountriesScreen());
                },
                leading: CircleAvatar(
                    child: Text(data.toString().toString().split(" ")[0][0])),
                title: TextWidget(
                  text: data.name,
                  color: Colors.black,
                  size: 16,
                ),
                subtitle: MyText(
                  text: 'Available Colleges:' + data.coursecount,
                  fontColor: Colors.black87,
                  size: 0,
                ),
              );
            }));
  }
}

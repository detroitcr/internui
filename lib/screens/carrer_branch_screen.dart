import 'package:internui/models/career_countries_model.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/list_tile_widget.dart';
import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/text_widget.dart';

import 'main_drawer_screen.dart';

class CareerBranch extends StatelessWidget {
  const CareerBranch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          text: 'Choose your Branch',
          backgroundColor: Colors.purple,
        ),
        drawer: MainDrawer(),
        body: ListView.builder(
            itemCount: career.length,
            itemBuilder: (context, index) {
              final data = career[index];
              return MyListTile(
                // ontap: () {
                //   drawer: MainDrawer(),
                // },
                leading: CircleAvatar(
                    child: Text(data.toString().toString().split(" ")[0][0])),
                title: TextWidget(
                  text: data.name,
                  color: Colors.black,
                  size: 3,
                ),
                subtitle: TextWidget(
                  text: 'Available Colleges:' + data.coursecount,
                  color: Colors.black87,
                  size: 0,
                ),
              );
            }));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:internui/models/home_card_model.dart';
import 'package:internui/screens/carrer_branch_screen.dart';
import 'package:internui/widgets/list_tile_widget.dart';
import 'package:internui/widgets/text_widget.dart';

import 'countries_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.purple,
            width: double.infinity,
            padding: EdgeInsets.all(0),
            height: 180,
            child: Image.asset(
              'assets/images/science.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.only(top: 10, left: 20),
          //   child: TextWidget(
          //     text: 'Branches',
          //     color: Colors.black,
          //     size: 24,
          //   ),
          // ),
          MyListTile(
            ontap: () {
              Navigator.of(context).pop();
              Get.to(() => CareerBranch());
            },
            leading: Icon(Icons.local_library_outlined),
            title: TextWidget(
              text: 'Science',
              color: Colors.black,
              size: 3,
            ),
          ),
          MyListTile(
            leading: Icon(Icons.local_library_outlined),
            title: TextWidget(
              text: 'Arts',
              color: Colors.black,
              size: 3,
            ),
          ),
          MyListTile(
            leading: Icon(Icons.local_library_outlined),
            title: TextWidget(
              text: 'Commerce',
              color: Colors.black,
              size: 3,
            ),
          ),
        ],
      ),
    );
  }
}

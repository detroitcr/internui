import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:internui/models/home_card_model.dart';
import 'package:internui/screens/carrer_branch_screen.dart';
import 'package:internui/widgets/app_bar_widget.dart';
import 'package:internui/widgets/home_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'Education App',
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
            itemCount: homeData.length,
            itemBuilder: (context, index) {
              return HomeCard(
                title: homeData[index].title,
                imageUrl: homeData[index].imageUrl,
                ontap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return CareerBranch();
                  // }));

                  Get.to(() => CareerBranch());
                },
              );
            }),
      ),
    );
  }
}

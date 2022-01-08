import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:internui/models/home_card_data.dart';
import 'package:internui/screens/carrer_branch.dart';
import 'package:internui/widgets/home_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education App', style: kAppBarStyle),
      ),
      body: ListView.builder(
          itemCount: homeData.length,
          itemBuilder: (context,index){
        return  HomeCard(
          title: homeData[index].title,
          imageUrl: homeData[index].imageUrl,
          ontap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return CareerBranch();
            // }));

            Get.to(CareerBranch());
          },
        );
      } )
    );
  }
}



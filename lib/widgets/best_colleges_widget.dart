import 'package:internui/models/college_model.dart';
import 'package:flutter/material.dart';
import 'package:internui/screens/expandable_list_tile.dart';
import 'package:internui/widgets/text_widget.dart';

class BestColleges extends StatelessWidget {
  const BestColleges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: ListView.builder(
          itemCount: collegeData.length,
          itemBuilder: (context, index) {
            final data = collegeData[index];
            return CardWidget(data: data);
          }),
    ));
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final CollegeModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              data.image,
              width: 400,
              height: 200,
              fit: BoxFit.cover,
            ),
            CustomExpandableTile(
              name: data.name,
              cost: data.cost,
              location: data.location,
              costTitle: 'living cost: ',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:internui/models/company_model.dart';
import 'package:internui/screens/expandable_list_tile.dart';
import 'package:internui/widgets/text_widget.dart';

class BestCompany extends StatelessWidget {
  const BestCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: companyData.length,
          itemBuilder: (context, index) {
            final data = companyData[index];
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
                        costTitle: 'Average Salary: ')
                  ],
                ),
              ),
            );
          }),
    ));
  }
}

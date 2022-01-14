import 'package:flutter/material.dart';
import 'package:internui/models/company_model.dart';
import 'package:internui/widgets/text_widget.dart';

class BestCompany extends StatelessWidget {
  const BestCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
      child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: companyModels.length,
          itemBuilder: (context, index) {
            final data = companyModels[index];
            return Card(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      data.image,
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    ExpansionTile(
                      childrenPadding: EdgeInsets.all(14),
                      title: TextWidget(
                        text: data.name,
                        size: 4,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: 'Average Salary: ',
                              color: Colors.black,
                              size: 4,
                            ),
                            TextWidget(
                              text: data.cost,
                              color: Colors.black54,
                              size: 4,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: 'Location: ',
                              color: Colors.black,
                              size: 4,
                            ),
                            TextWidget(
                              text: data.location,
                              color: Colors.black54,
                              size: 4,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    ));
  }
}

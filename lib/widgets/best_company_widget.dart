import 'package:flutter/material.dart';
import 'package:internui/models/company_model.dart';
import 'package:internui/widgets/mytext_widget.dart';
import 'package:internui/widgets/sized_box_widget.dart';

import 'card_widget.dart';

class BestCompany extends StatelessWidget {
  const BestCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: 'BestCompany',
            fontColor: Colors.black,
          ),
          MySizedBox(
            height: 0.01,
          ),
          Container(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: companyModels.length,
                  itemBuilder: (context, index) {
                    final data = companyModels[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: CardWidget(
                          image: data.image,
                          cost: data.cost,
                          location: data.location,
                          name: data.name,
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

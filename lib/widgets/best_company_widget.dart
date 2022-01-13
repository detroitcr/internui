import 'package:flutter/material.dart';
import 'package:internui/models/company_model.dart';
import 'package:internui/widgets/text_widget.dart';

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
          TextWidget(
            text: 'BestCompany',
            color: Colors.black,
            size: 4,
          ),
          // MySizedBox(
          //   height: 0,
          // ),
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

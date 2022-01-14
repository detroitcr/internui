import 'package:flutter/material.dart';
import 'package:internui/models/college_model.dart';
import 'package:internui/widgets/text_widget.dart';

class ExpandableListTile extends StatelessWidget {
  const ExpandableListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
      child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: collegeData.length,
          itemBuilder: (context, index) {
            final data = collegeData[index];
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
                              text: 'Living Cost: ',
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

  // Widget buildText(BuildContext context) => ExpansionTile(
  //       childrenPadding: EdgeInsets.all(14),
  //       title: TextWidget(
  //         text: 'Amazon',
  //         size: 4,
  //         fontWeight: FontWeight.w500,
  //       ),
  //       children: [
  //         Text(
  //           '1',
  //           style: TextStyle(fontSize: 16),
  //         ),
  //         Text(
  //           ' 2',
  //           style: TextStyle(fontSize: 16),
  //         ),
  //         Text(
  //           ' 3',
  //           style: TextStyle(fontSize: 16),
  //         ),
  //       ],
  //     );
}

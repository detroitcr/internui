import 'package:flutter/material.dart';
import 'package:internui/widgets/text_widget.dart';

class ExpandableListTile extends StatelessWidget {
  const ExpandableListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(12),
          child: Card(
              child: SingleChildScrollView(
            child: Column(
              children: [buildImage(), buildText(context)],
            ),
          ))),
    );
  }

  Widget buildImage() => Image.asset(
        'assets/images/amazon.jpg',
        fit: BoxFit.cover,
      );
  Widget buildText(BuildContext context) => ExpansionTile(
        childrenPadding: EdgeInsets.all(14),
        title: TextWidget(
          text: 'Amazon',
          size: 4,
          fontWeight: FontWeight.w500,
        ),
        children: [
          Text(
            'Amazon.com, Inc. is an American multinational technology company which focuses on e-commerce, cloud computing, digital streaming, and artificial intelligence. It is one of the Big Five companies in the U.S. information technology industry, along with Google (Alphabet Inc.), Apple, Meta (Facebook), and Microsoft.[7][8][9][10] The company has been referred to as "one of the most influential economic and cultural forces in the world", as well as the world',
            style: TextStyle(fontSize: 16),
          ),
        ],
      );
}

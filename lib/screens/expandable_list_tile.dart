import 'package:flutter/material.dart';
import 'package:internui/models/college_model.dart';
import 'package:internui/widgets/text_widget.dart';

class CustomExpandableTile extends StatelessWidget {
  final String name;
  final String cost;
  final String location;
  final String costTitle;

  CustomExpandableTile(
      {required this.name,
      required this.cost,
      required this.location,
      required this.costTitle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.all(14),
      title: TextWidget(
        text: name,
        size: 4,
        fontWeight: FontWeight.w500,
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: costTitle,
              color: Colors.black,
              size: 3,
            ),
            TextWidget(
              text: cost,
              color: Colors.black54,
              size: 3,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TextWidget(
              text: 'Location: ',
              color: Colors.black,
              size: 3,
            ),
            TextWidget(
              text: location,
              color: Colors.black54,
              size: 3,
            ),
          ],
        ),
      ],
    );
  }
}

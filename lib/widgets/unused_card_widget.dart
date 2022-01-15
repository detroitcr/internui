import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/image_widget.dart';
import 'package:internui/widgets/text_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    // this.data,
    // this.data1,
    required this.name,
    required this.image,
    required this.cost,
    required this.location,
  }) : super(key: key);

  final String name;
  final String image;
  final String cost;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 4),
      child: Card(
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  getImageAsset(image, 210, 300),
                  Container(
                      padding: EdgeInsets.only(left: 15, bottom: 15),
                      alignment: Alignment.bottomLeft,
                      height: 210,
                      width: 300,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.7),
                            ],
                            end: Alignment.bottomCenter,
                            begin: Alignment.topCenter),
                      ),
                      child: TextWidget(
                        text: name,
                        color: Colors.white,
                        size: 32,
                      )
                      // color: Colors.black,
                      ),
                ],
              ),
              TextWidget(
                text: 'Living Cost: ' + cost,
                color: Colors.black,
              ),
              TextWidget(
                text: 'Location: ' + location,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}

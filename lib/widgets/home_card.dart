import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/image_widget.dart';
import 'card_opacity_containerwidget.dart';

class HomeCard extends StatelessWidget {
  final String title;

  final String imageUrl;
  final VoidCallback ontap;

  HomeCard({required this.title, required this.imageUrl, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        child: GestureDetector(
          onTap: ontap,
          child: Card(
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    // getImageWidget(),
                    getImageAsset(imageUrl, 170, 360),
                    OpacityContainer(title: title),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

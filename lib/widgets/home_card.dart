import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card_opacity_container.dart';

class HomeCard extends StatelessWidget {
  final String title;

  final String imageUrl;
  final VoidCallback ontap;

  HomeCard({required this.title, required this.imageUrl, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 22, right: 20),
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
                    Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                      height: 170,
                      width: 360,
                    ),
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

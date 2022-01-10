import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internui/models/college_model.dart';
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
    return Card(
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
                image,
                fit: BoxFit.cover,
                height: 210,
                width: 300,
              ),
              Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  alignment: Alignment.bottomLeft,
                  height: 210,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.7),
                    ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
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
          Column(
            children: [
              Text(
                'Living Cost:' + cost,
                style: TextStyle(color: Colors.black),
              ),
              Text(
                location,
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class GestureDetectorWidget extends StatelessWidget {
//   const GestureDetectorWidget({
//     Key? key,
//     this.data,
//     this.data1,
//   }) : super(key: key);
//
//   final CollegeModel? data;
//   final CompanyModel? data1;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         child: CardWidget(
//           data: data,
//           name: data!.name,
//           cost: data!.cost,
//           location: data!.location,
//           image: data!.image,
//         ),
//       ),
//     );
//   }
// }

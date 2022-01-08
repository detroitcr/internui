import 'package:internui/constants.dart';
import 'package:internui/models/branch_models.dart';
import 'package:flutter/material.dart';

class BestColleges extends StatelessWidget {
  const BestColleges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best Colleges',
            style: kCareerStyle,
          ),
          Container(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: collegeData.length,
                  itemBuilder: (context, index) {
                    final data = collegeData[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
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
                                    data.image,
                                    fit: BoxFit.cover,
                                    height: 210,
                                    width: 300,
                                  ),
                                  Container(
                                    padding:
                                    EdgeInsets.only(left: 15, bottom: 15),
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
                                    child: Text(
                                      data.name,
                                      // 'hi',
                                      // "Titans",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 26),
                                    ),
                                    // color: Colors.black,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Living Cost:' + data.livingCost,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    data.location,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

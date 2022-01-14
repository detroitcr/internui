import 'package:internui/widgets/best_colleges_widget.dart';
import 'package:internui/widgets/best_company_widget.dart';
import 'package:flutter/material.dart';
import 'package:internui/widgets/text_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 2,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: TextWidget(
            text: 'Detail Screen',
            color: Colors.white,
            fontWeight: FontWeight.w700,
            size: 6,
          ),
          bottom: const TabBar(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            isScrollable: true,
            tabs: [
              Tab(
                child: TextWidget(
                  text: "Best Colleges",
                  color: Colors.white,
                ),
              ),
              Tab(
                child: TextWidget(
                  text: "Best Comapny",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BestColleges(),
            BestCompany(),
            // RapidNews(),
          ],
        ),
      ),
    );
  }
}

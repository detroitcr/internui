import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:internui/screens/countries_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purple, scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: CountriesScreen(),
    );
  }
}

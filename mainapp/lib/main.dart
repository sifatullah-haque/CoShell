import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainapp/pages/homePage/home_page_top_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    int activeButtonIndex = 0; // Set the initial active button index here
    void setActiveButton(int index) {
      activeButtonIndex = index;
    }

    return ScreenUtilInit(
      designSize: const Size(340, 844),
      builder: (context, child) {
        return MaterialApp(title: 'Material App', home: HomePageTopButton());
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainapp/pages/detailsPage/details_page.dart';
import 'package:mainapp/pages/homePage/home_page_top_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    void setActiveButton(int index) {}

    return ScreenUtilInit(
      designSize: const Size(340, 844),
      builder: (context, child) {
        return MaterialApp(
          title: 'Material App',
          home: DetailsPage(),
        );
      },
    );
  }
}

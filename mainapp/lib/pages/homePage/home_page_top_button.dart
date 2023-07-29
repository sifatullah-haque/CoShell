import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color_is.dart';
import 'top_button.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomePageTopButton extends StatefulWidget {
  const HomePageTopButton({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageTopButton> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageTopButton> {
  bool value1 = true;
  bool value2 = false;
  int _activeButtonIndex = 0;

  void _setActiveButton(int index) {
    setState(() {
      _activeButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "My Home",
            style: GoogleFonts.inter(
              color: ColorIs.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              height: 32.h,
              width: 32.w,
              child: const Icon(
                Icons.add_circle_sharp,
                color: ColorIs.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TopButton(
                    logo: const Icon(
                      Icons.tv,
                      color: ColorIs.black,
                    ),
                    firstText: "Smart Tv",
                    secondText: "2 Active",
                    isActive: _activeButtonIndex == 0,
                    onPressed: () {
                      // Set the first button active and other buttons inactive
                      _setActiveButton(0);
                    },
                  ),
                  SizedBox(width: 8.w),
                  TopButton(
                    logo: const Icon(
                      Icons.lightbulb_rounded,
                      color: ColorIs.black,
                    ),
                    firstText: "Lights",
                    secondText: "2 Active",
                    isActive: _activeButtonIndex == 1,
                    onPressed: () {
                      // Set the second button active and other buttons inactive
                      _setActiveButton(1);
                    },
                  ),
                  SizedBox(width: 8.w),
                  TopButton(
                    logo: const Icon(
                      Icons.air_rounded,
                      color: ColorIs.black,
                    ),
                    firstText: "Air Purifier",
                    secondText: "1 Active",
                    isActive: _activeButtonIndex == 2,
                    onPressed: () {
                      // Set the third button active and other buttons inactive
                      _setActiveButton(2);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Scenes",
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: ColorIs.black,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF2F3F5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 24.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.wb_sunny_rounded,
                      color: ColorIs.black,
                    ),
                  ),
                  Text(
                    "Morning scene",
                    style: GoogleFonts.inter(
                      color: ColorIs.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  FlutterSwitch(
                    value: value1,
                    height: 30.h,
                    width: 60.w,
                    toggleSize: 20.0,
                    activeColor: ColorIs.halfGreen,
                    inactiveColor: ColorIs.gray,
                    activeToggleColor: ColorIs.blue,
                    inactiveToggleColor: ColorIs.white,
                    onToggle: (val) {
                      setState(() {
                        value1 = val;
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF2F3F5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 24.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.nights_stay_rounded,
                      color: ColorIs.black,
                    ),
                  ),
                  Text(
                    "Night scene",
                    style: GoogleFonts.inter(
                      color: ColorIs.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  FlutterSwitch(
                    value: value2,
                    height: 30.h,
                    width: 60.w,
                    toggleSize: 20.0,
                    activeColor: ColorIs.halfGreen,
                    inactiveColor: ColorIs.gray,
                    activeToggleColor: ColorIs.blue,
                    inactiveToggleColor: ColorIs.white,
                    onToggle: (val) {
                      setState(() {
                        value2 = val;
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

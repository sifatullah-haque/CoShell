import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainapp/pages/common/color_is.dart';

class gridView extends StatefulWidget {
  const gridView({
    super.key,
  });

  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  bool smartTv = true;
  bool airCon = true;
  bool airPurifier = false;
  bool smartLight = true;
  bool fan = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: ColorIs.whiteGray,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: ColorIs.white,
                        child: Icon(
                          Icons.tv_rounded,
                          color: ColorIs.blue,
                        ),
                      ),
                      FlutterSwitch(
                        value: smartTv,
                        height: 20.h,
                        width: 40.w,
                        toggleSize: 15.0,
                        activeColor: ColorIs.halfGreen,
                        inactiveColor: ColorIs.gray,
                        activeToggleColor: ColorIs.blue,
                        inactiveToggleColor: ColorIs.white,
                        onToggle: (val) {
                          setState(() {
                            smartTv = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 15.0),
                    child: Text(
                      "Smart Tv",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      "1 Device",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: ColorIs.whiteGray,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: ColorIs.white,
                        child: Icon(
                          Icons.air_rounded,
                          color: ColorIs.blue,
                        ),
                      ),
                      FlutterSwitch(
                        value: airCon,
                        height: 20.h,
                        width: 40.w,
                        toggleSize: 15.0,
                        activeColor: ColorIs.halfGreen,
                        inactiveColor: ColorIs.gray,
                        activeToggleColor: ColorIs.blue,
                        inactiveToggleColor: ColorIs.white,
                        onToggle: (val) {
                          setState(() {
                            airCon = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 15.0),
                    child: Text(
                      "Air Conditioner",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      "1 Device",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: ColorIs.whiteGray,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: ColorIs.white,
                        child: Icon(
                          Icons.waves,
                          color: ColorIs.blue,
                        ),
                      ),
                      FlutterSwitch(
                        value: airPurifier,
                        height: 20.h,
                        width: 40.w,
                        toggleSize: 15.0,
                        activeColor: ColorIs.halfGreen,
                        inactiveColor: ColorIs.gray,
                        activeToggleColor: ColorIs.blue,
                        inactiveToggleColor: ColorIs.white,
                        onToggle: (val) {
                          setState(() {
                            airPurifier = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 15.0),
                    child: Text(
                      "Air Purifier",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      "4 Device",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: ColorIs.whiteGray,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: ColorIs.white,
                        child: Icon(
                          Icons.lightbulb_sharp,
                          color: ColorIs.blue,
                        ),
                      ),
                      FlutterSwitch(
                        value: smartLight,
                        height: 20.h,
                        width: 40.w,
                        toggleSize: 15.0,
                        activeColor: ColorIs.halfGreen,
                        inactiveColor: ColorIs.gray,
                        activeToggleColor: ColorIs.blue,
                        inactiveToggleColor: ColorIs.white,
                        onToggle: (val) {
                          setState(() {
                            smartLight = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 15.0),
                    child: Text(
                      "Smart Light",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      "3 Device",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: ColorIs.whiteGray,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: ColorIs.white,
                        child: Icon(
                          Icons.wind_power_outlined,
                          color: ColorIs.blue,
                        ),
                      ),
                      FlutterSwitch(
                        value: fan,
                        height: 20.h,
                        width: 40.w,
                        toggleSize: 15.0,
                        activeColor: ColorIs.halfGreen,
                        inactiveColor: ColorIs.gray,
                        activeToggleColor: ColorIs.blue,
                        inactiveToggleColor: ColorIs.white,
                        onToggle: (val) {
                          setState(() {
                            fan = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 15.0),
                    child: Text(
                      "Smart fan",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      "2 Device",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorIs.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

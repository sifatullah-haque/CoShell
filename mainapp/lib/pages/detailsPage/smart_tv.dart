import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color_is.dart';

class SmartTv extends StatefulWidget {
  const SmartTv({Key? key}) : super(key: key);

  @override
  State<SmartTv> createState() => _SmartTvState();
}

class _SmartTvState extends State<SmartTv> {
  bool smartTv = true; // Move smartTv variable here to preserve its state

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color_is.dart';

class Mute extends StatefulWidget {
  const Mute({super.key});

  @override
  State<Mute> createState() => _MuteState();
}

class _MuteState extends State<Mute> {
  @override
  Widget build(BuildContext context) {
    bool mute = true;
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
                        Icons.waves_rounded,
                        color: ColorIs.blue,
                      ),
                    ),
                    FlutterSwitch(
                      value: mute,
                      height: 20.h,
                      width: 40.w,
                      toggleSize: 15.0,
                      activeColor: ColorIs.halfGreen,
                      inactiveColor: ColorIs.gray,
                      activeToggleColor: ColorIs.blue,
                      inactiveToggleColor: ColorIs.white,
                      onToggle: (val) {
                        setState(() {
                          mute = val;
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 15.0),
                  child: Text(
                    "Mute",
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
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

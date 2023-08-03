import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainapp/pages/detailsPage/smart_tv.dart';

import '../common/color_is.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool mute = true;
  bool cast = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Center(
            child: Text(
              "Living Room",
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: ColorIs.blue, // Replace ColorIs.blue with Colors.blue
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SmartTv(),
              SizedBox(
                height: 25.h,
              ),
              Column(
                children: [
                  Container(
                    height: 68.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[
                          300], // Replace ColorIs.whiteGray with Colors.grey[300]
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.remove_circle_rounded,
                          color: ColorIs
                              .blue, // Replace ColorIs.blue with Colors.blue
                          size: 36.0,
                        ),
                        Text(
                          "Channel",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.add_circle_rounded,
                          color: ColorIs
                              .blue, // Replace ColorIs.blue with Colors.blue
                          size: 36.0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 110.h,
                          width: 138.w,
                          decoration: BoxDecoration(
                            color: ColorIs.whiteGray,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CircleAvatar(
                                      radius: 18.0,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.volume_off,
                                        color: ColorIs
                                            .blue, // Replace ColorIs.blue with Colors.blue
                                      ),
                                    ),
                                    FlutterSwitch(
                                      value: mute,
                                      height: 20.h,
                                      width: 40.w,
                                      toggleSize: 15.0,
                                      activeColor: ColorIs
                                          .halfGreen, // Replace ColorIs.halfGreen with Colors.green
                                      inactiveColor: Colors
                                          .grey, // Replace ColorIs.gray with Colors.grey
                                      activeToggleColor: ColorIs
                                          .blue, // Replace ColorIs.blue with Colors.blue
                                      inactiveToggleColor: Colors
                                          .white, // Replace ColorIs.white with Colors.white
                                      onToggle: (val) {
                                        setState(() {
                                          mute = val;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  "Mute",
                                  style: GoogleFonts.inter(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 110.h,
                        width: 135.w,
                        decoration: BoxDecoration(
                          color: ColorIs.whiteGray,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 18.0,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.desktop_mac,
                                      color: ColorIs
                                          .blue, // Replace ColorIs.blue with Colors.blue
                                    ),
                                  ),
                                  FlutterSwitch(
                                    value: cast,
                                    height: 20.h,
                                    width: 40.w,
                                    toggleSize: 15.0,
                                    activeColor: ColorIs
                                        .halfGreen, // Replace ColorIs.halfGreen with Colors.green
                                    inactiveColor: Colors
                                        .grey, // Replace ColorIs.gray with Colors.grey
                                    activeToggleColor: ColorIs
                                        .blue, // Replace ColorIs.blue with Colors.blue
                                    inactiveToggleColor: Colors
                                        .white, // Replace ColorIs.white with Colors.white
                                    onToggle: (val) {
                                      setState(() {
                                        cast = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                "Cast",
                                style: GoogleFonts.inter(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

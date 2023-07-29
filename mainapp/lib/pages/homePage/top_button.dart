import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color_is.dart';

class TopButton extends StatelessWidget {
  final Icon logo;
  final String firstText;
  final String secondText;
  final bool isActive;
  final VoidCallback onPressed;

  const TopButton({
    Key? key,
    required this.logo,
    required this.firstText,
    required this.secondText,
    required this.isActive,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 150.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? ColorIs.halfGreen : Color(0xffF2F3F5),
          elevation: 0.0,
          shadowColor: Colors.transparent,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: CircleAvatar(
                radius: 24.0,
                backgroundColor: ColorIs.white,
                child: logo,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    firstText,
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      color: ColorIs.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    secondText,
                    style: GoogleFonts.inter(
                      fontSize: 11.sp,
                      color: ColorIs.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

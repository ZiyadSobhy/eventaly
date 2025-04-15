import 'package:eventaly/core/resources/color_manger/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeManger {
  static final ThemeData light = ThemeData(
    primaryColor: ColorMangers.blue,
    scaffoldBackgroundColor: ColorMangers.white,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: ColorMangers.gray,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorMangers.gray),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorMangers.red),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorMangers.gray),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorMangers.gray),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorMangers.red),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        alignment: Alignment.centerRight,
        foregroundColor: ColorMangers.blue, // اللون الأزرق من ColorMangers
        textStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: REdgeInsets.symmetric(
            vertical: 12.h,
          ),

          backgroundColor: ColorMangers.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
    )


    ),
  );

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: ColorMangers.darkBlue,
  );
}

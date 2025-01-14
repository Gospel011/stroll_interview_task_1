import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

// 34, 20, 14, 12, 11

class AppTypography {
  static final titleSmall = TextStyle(
    color: AppColors.alabaster,
    fontFamily: 'PlusJakartaSans',
    fontSize: 34.sp,
    height: 41.41.h / 34.sp,
    fontWeight: FontWeight.w400,
  );

  static final bodyLarge = TextStyle(
    color: AppColors.alabaster,
    fontFamily: 'PlusJakartaSans',
    fontSize: 20.sp,
    height: 20.h / 20.sp,
    fontWeight: FontWeight.w400,
  );

  //*
  static final bodyMedium = TextStyle(
    color: AppColors.alabaster,
    fontFamily: 'PlusJakartaSans',
    fontSize: 14.sp,
    height: 14.7.h / 14.sp,
    fontWeight: FontWeight.w400,
  );

  //*
  static final bodySmall = TextStyle(
    color: AppColors.alabaster,
    fontFamily: 'PlusJakartaSans',
    fontSize: 12.sp,
    height: 14.4.h / 12.sp,
    fontWeight: FontWeight.w400,
  );

  //*
  static final labelLarge = TextStyle(
    color: AppColors.alabaster,
    fontFamily: 'PlusJakartaSans',
    fontSize: 11.sp,
    height: 13.4.h / 11.sp,
    fontWeight: FontWeight.w400,
  );
}

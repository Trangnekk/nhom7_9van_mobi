import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static const _defaultTextStyle = TextStyle(
    fontStyle: FontStyle.normal,
    fontFamily: 'Inter',
  );

  static final h2 = _defaultTextStyle.copyWith(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
  );

  static final h3 = _defaultTextStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  static final h4 = _defaultTextStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  static final p = _defaultTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static final body = _defaultTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final small = _defaultTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static final bodyMedium = _defaultTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final subtleSemibold = _defaultTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static final subtleMedium = _defaultTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final textSmRegular = _defaultTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final textXsRegular = _defaultTextStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
}

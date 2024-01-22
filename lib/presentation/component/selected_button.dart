import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trang_team/core/app_textstyle.dart';

class ButtonWidget extends StatelessWidget {
  final title;
  final cancel;
  const ButtonWidget({super.key, this.title, this.cancel = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        color: cancel ? Colors.black : Colors.grey[600],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: AppTextStyle.bodyMedium.copyWith(
          color: cancel ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

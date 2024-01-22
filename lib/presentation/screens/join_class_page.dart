import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trang_team/core/app_textstyle.dart';
import 'package:trang_team/presentation/component/selected_button.dart';

class JoinClassPage extends StatelessWidget {
  const JoinClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 345.w,
        height: 160.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mã lớp học:',
                    style: AppTextStyle.subtleMedium,
                  ),
                  SizedBox(height: 4.h),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nhập mã lớp học',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ButtonWidget(
                    title: 'Hủy',
                    cancel: false,
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ButtonWidget(
                    title: 'Tham gia',
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

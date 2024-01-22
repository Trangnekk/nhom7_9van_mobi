import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trang_team/core/app_icons.dart';
import 'package:trang_team/presentation/component/page_container.dart';
import 'package:trang_team/presentation/component/selected_button.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: 'Thông tin cá nhân',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 8.h),
          Stack(children: [
            SvgPicture.asset(AppIcons.icInfo),
            Positioned(
              top: 16.h,
              left: 12.w,
              child: Image.asset(
                AppImage.imgAvatar,
                width: 40.w,
                height: 40.h,
                fit: BoxFit.contain,
              ),
            )
          ]),
          const ButtonWidget(title: 'Thay đổi')
        ],
      ),
    );
  }
}

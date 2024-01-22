import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trang_team/core/app_icons.dart';
import 'package:trang_team/core/app_textstyle.dart';
import 'package:trang_team/presentation/screens/choose_role_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImage.imgBackground,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.ic9VanLogo,
                  ),
                  SizedBox(height: 20.h),
                  SvgPicture.asset(AppIcons.icLoginHello),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChooseRolePage(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      AppIcons.icGoogleLogin,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChooseRolePage(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      AppIcons.icMSLogin,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'Giới thiệu',
                  style: AppTextStyle.p
                      .copyWith(decoration: TextDecoration.underline),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chính sách',
                      style: AppTextStyle.p
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                    Text(' & ', style: AppTextStyle.p),
                    Text(
                      'Điều khoản',
                      style: AppTextStyle.p
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trang_team/core/app_icons.dart';
import 'package:trang_team/core/app_textstyle.dart';
import 'package:trang_team/presentation/component/page_container.dart';
import 'package:trang_team/presentation/component/selected_button.dart';
import 'package:trang_team/presentation/screens/join_class_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        title: 'Lớp học',
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                title: Text('Tham gia lớp học', style: AppTextStyle.h4,),
                                content: JoinClassPage()));
                      },
                      child: ButtonWidget(title: 'Tham gia'))),
            ),
            const SizedBox(
              height: 8,
            ),
            SvgPicture.asset(AppIcons.icHomeCard1),
            SvgPicture.asset(AppIcons.icHomeCard2),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trang_team/core/app_icons.dart';
import 'package:trang_team/presentation/component/page_container.dart';
import 'package:trang_team/presentation/component/selected_button.dart';
import 'package:trang_team/presentation/screens/practice3.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        title: 'Luyện đề',
        child: Column(
          children: [
            Stack(
              alignment: const FractionalOffset(
                0.96,
                0.88,
              ),
              children: [
                SvgPicture.asset(AppIcons.icPractice1),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Practice3()));
                  },
                  child: const ButtonWidget(
                    title: 'Luyện đề',
                  ),
                )
              ],
            ),
            Stack(
              alignment: const FractionalOffset(
                0.96,
                0.88,
              ),
              children: [
                SvgPicture.asset(AppIcons.icPractice2),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Practice3()));
                  },
                  child: const ButtonWidget(
                    title: 'Luyện đề',
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

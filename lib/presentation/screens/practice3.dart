
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trang_team/core/app_textstyle.dart';
import 'package:trang_team/presentation/component/drawer.dart';
import 'package:trang_team/presentation/component/page_container.dart';
import 'package:trang_team/presentation/component/selected_button.dart';
import 'package:trang_team/presentation/screens/home_page.dart';
import 'package:trang_team/presentation/screens/homework_page.dart';
import 'package:trang_team/presentation/screens/personal_page.dart';
import 'package:trang_team/presentation/screens/practice_page.dart';

class Practice3 extends StatefulWidget {
  const Practice3({super.key});

  @override
  State<Practice3> createState() => _Practice3State();
}

class _Practice3State extends State<Practice3> {
  int _selectedIndex = 4;
  List<Widget> listScreen = [
    const HomePage(),
    const PracticePage(),
    const PersonalPage(),
    const HomeworkPage(),
    Practice3Body(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer:
            DrawerWidget(selectedIndex: _selectedIndex, onTab: _onItemTapped),
        body: listScreen[_selectedIndex]);
  }
}

class Practice3Body extends StatelessWidget {
  const Practice3Body({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: 'Luyện đề',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Đề bài: Kể về một trải nghiêm của em',
              style: AppTextStyle.small,
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 200.h,
              child: TextField(
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Bài làm của bạn',
                ),
              ),
            ),
            ButtonWidget(title: 'Nộp bài'),
          ],
        ),
      ),
    );
  }
}

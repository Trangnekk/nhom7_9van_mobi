import 'package:flutter/material.dart';
import 'package:trang_team/presentation/component/drawer.dart';
import 'package:trang_team/presentation/screens/home_page.dart';
import 'package:trang_team/presentation/screens/homework_page.dart';
import 'package:trang_team/presentation/screens/personal_page.dart';
import 'package:trang_team/presentation/screens/practice_page.dart';

class PageFrame extends StatefulWidget {
  final title;
  final children;
  const PageFrame({super.key, this.title, this.children});

  @override
  State<PageFrame> createState() => _PageFrameState();
}

class _PageFrameState extends State<PageFrame> {
  int _selectedIndex = 0;

  List<Widget> listScreen = [
    const HomePage(),
    const PracticePage(),
    const PersonalPage(),
    HomeworkPage(),
    HomeworkPageComplete(),
    HomeworkPageMark(),
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
      drawer: DrawerWidget(selectedIndex: _selectedIndex, onTab: _onItemTapped),
      body: listScreen[_selectedIndex],
    );
  }
}

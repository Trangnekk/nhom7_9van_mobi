// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trang_team/core/app_icons.dart';
import 'package:trang_team/core/app_textstyle.dart';

class DrawerWidget extends StatefulWidget {
  final selectedIndex;
  final onTab;
  DrawerWidget({
    Key? key,
    required this.selectedIndex,
    this.onTab,
  }) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  TextStyle textStyle = AppTextStyle.subtleMedium;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 240,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImage.imgAvatar,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Minh Nguyen",
                        style: AppTextStyle.subtleSemibold,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        AppIcons.icChevronsLeft,
                        width: 28.w,
                        height: 28.w,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 214, 209, 209),
              ),
              ListTile(
                title: Text(
                  'Lớp tham gia',
                  style: textStyle,
                ),
                selected: widget.selectedIndex == 0,
                onTap: () {
                  widget.onTab(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Luyện đề',
                  style: textStyle,
                ),
                selected: widget.selectedIndex == 1,
                onTap: () {
                  widget.onTab(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Thông tin cá nhân',
                  style: textStyle,
                ),
                selected: widget.selectedIndex == 2,
                onTap: () {
                  widget.onTab(2);
                  Navigator.pop(context);
                },
              ),
              ExpansionTile(
                title: Text('Bài tập'),
                children: [
                  ListTile(
                    title: Text('Chưa làm'),
                    selected: widget.selectedIndex == 3,
                    onTap: () {
                      widget.onTab(3);
                      Navigator.pop(context);
                    
                    },
                  ),
                  ListTile(
                    title: Text('Đã hoàn thành'),
                    selected: widget.selectedIndex == 4,
                    onTap: () {
                      widget.onTab(4);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text('Đã trả điểm'),
                    selected: widget.selectedIndex == 5,
                    onTap: () {
                      widget.onTab(5);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 214, 209, 209),
              ),
              Row(
                children: [
                  const Icon(Icons.logout),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Logout',
                    style: textStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

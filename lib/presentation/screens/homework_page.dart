import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trang_team/core/app_icons.dart';
import 'package:trang_team/presentation/component/page_container.dart';

class HomeworkPage extends StatelessWidget {
  const HomeworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        title: 'Bài tập', child: SvgPicture.asset(AppIcons.icHomework));
  }
}

class HomeworkPageComplete extends StatelessWidget {
  const HomeworkPageComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        title: 'Bài tập', child: SvgPicture.asset(AppIcons.icHomeworkComplete));
  }
}

class HomeworkPageMark extends StatelessWidget {
  const HomeworkPageMark({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        title: 'Bài tập', child: Image.asset(AppImage.imgHomeworkPoint));
  }
}

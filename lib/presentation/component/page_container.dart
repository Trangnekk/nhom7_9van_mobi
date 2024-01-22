import 'package:flutter/material.dart';
import 'package:trang_team/core/app_textstyle.dart';

class PageContainer extends StatelessWidget {
  final title;
  final child;
  const PageContainer({super.key, this.title, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                style: AppTextStyle.h4,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      this.leading,
      this.title,
      this.subtitle,
      this.verticalSpacing,
      this.horizontalSpacing});

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final double? verticalSpacing;
  final double? horizontalSpacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: horizontalSpacing ?? 14.w,
      crossAxisAlignment: subtitle == null
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        if (leading != null) leading!,
        Expanded(
          child: Column(
            crossAxisAlignment: subtitle == null
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: verticalSpacing ?? 10.h,
            children: [
              // title
              if (title != null) title!,

              // subtitle
              if (subtitle != null) subtitle!
            ],
          ),
        ),
      ],
    );
  }
}

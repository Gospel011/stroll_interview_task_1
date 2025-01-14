import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class MyBottomNavBarItem extends StatelessWidget {
  const MyBottomNavBarItem(
      {super.key, required this.asset, this.count, this.onTap, this.showLabel});

  final String asset;
  final int? count;
  final VoidCallback? onTap;
  final bool? showLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Badge(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        backgroundColor: Theme.of(context).colorScheme.onSecondaryFixedVariant,
        label: showLabel == true && count == null ? Text('  ') : Text('$count'),
        isLabelVisible: count != null || showLabel == true,
        child: SvgPicture.asset(
          asset,
          width: 28.r,
          height: 28.r,
        ),
      ),
    );
  }
}

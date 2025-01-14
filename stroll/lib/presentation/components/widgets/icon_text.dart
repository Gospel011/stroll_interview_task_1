import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.icon,
    required this.text,
    this.spacing,
    this.style,
  });

  final Widget icon;
  final String text;
  final double? spacing;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: spacing ?? 4.w,
      children: [
        icon,
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.bold, shadows: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                color: Theme.of(context)
                    .colorScheme
                    .surface
                    .withValues(alpha: 0.4))
          ]).merge(style),
        )
      ],
    );
  }
}

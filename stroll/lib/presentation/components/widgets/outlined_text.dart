import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OutlinedText extends StatelessWidget {
  const OutlinedText(this.text, {super.key, this.strokeWidth});

  final String text;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth ?? 0.32.r
                ..color = Theme.of(context).colorScheme.onSecondaryFixed,
              shadows: [
                BoxShadow(
                    blurRadius: 20,
                    color: Theme.of(context)
                        .colorScheme
                        .surface
                        .withValues(alpha: 0.4))
              ]),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.primaryFixed,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }
}

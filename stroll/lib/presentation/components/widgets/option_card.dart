import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/data_layer/models/option.dart';
import 'package:stroll/presentation/components/widgets/my_list_tile.dart';

class OptionCard extends StatelessWidget {
  const OptionCard(
      {super.key, required this.option, this.onTap, this.selected = false});

  final Option option;
  final VoidCallback? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
                color: selected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.secondary,
                width: 2.r),
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  color: Theme.of(context)
                      .colorScheme
                      .surface
                      .withValues(alpha: 0.3))
            ]),
        child: MyListTile(
          leading: Container(
            padding: EdgeInsets.all(6.r),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? Theme.of(context).colorScheme.primary : null,
                border: Border.all(
                  width: 2.r,
                  color: selected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSecondary,
                )),
            child: Text(
              option.optionId,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: selected
                      ? Theme.of(context).colorScheme.onSurfaceVariant
                      : Theme.of(context).colorScheme.onSecondary),
            ),
          ),
          title: Text(
            option.option,
          ),
        ),
      ),
    );
  }
}

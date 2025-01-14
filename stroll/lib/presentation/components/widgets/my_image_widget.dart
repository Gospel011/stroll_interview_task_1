import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:stroll/presentation/components/widgets/image_loading_placeholder.dart';
import 'package:stroll/utils/extensions/widget_extensions.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget(
      {super.key,
      this.image,
      this.borderRadius,
      this.onTap,
      this.errorWidget,
      this.placeHolder,
      this.boxfit = BoxFit.cover});

  final double? borderRadius;
  final BoxFit? boxfit;
  final VoidCallback? onTap;

  final String? image;
  final Widget? placeHolder;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 16.0)),
        child: CachedNetworkImage(
                imageUrl: image!,
                fit: boxfit,
                placeholder: (context, url) =>
                    placeHolder ??
                     ImageLoadingPlaceHolderWidget(
                      color: Theme.of(context).primaryColor,
                    ).shimmer(),
                errorWidget: (context, url, error) =>
                    errorWidget ?? const ImageLoadingPlaceHolderWidget(),
                fadeInDuration: const Duration(milliseconds: 1),
                fadeInCurve: Curves.linear,
              ),
      ),
    );
  }
}

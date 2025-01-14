import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/presentation/components/widgets/my_image_widget.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    super.key,
    required this.url,
    this.initials = '',
    this.size = 50,
    this.borderColor,
    this.onTap,
  });

  final void Function()? onTap;

  final Color? borderColor;

  final String initials;
  final double size;

  final String url;

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  Widget get image {
    double parsedSize = widget.size >= 50
        ? 24
        : widget.size >= 20 && widget.size < 40
            ? 12
            : 16;
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.size),
      child: SizedBox(
        width: widget.size.r,
        height: widget.size.r,
        child: MyImageWidget(
          image: widget.url,
          errorWidget: buildDefaultImage(parsedSize),
        ),
      ),
    );
  }

  // default widget incase of error fetching image from internet
  Center buildDefaultImage(double parsedSize) {
    return Center(
        child: Text(
      widget.initials,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: parsedSize),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size,
      height: widget.size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
      ),
      child: image,
    );
  }
}

import 'package:craftplate/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    required this.ImageUrl,
    this.applyImageRadius = true,
    this.backgroundColor,
    this.onpressed,
    this.isNetworkImage = false,
    this.width,
    this.height,
    this.padding,
    this.fit = BoxFit.contain,
    this.border,
    this.borderRadius = TSizes.sm,
  });

  final String ImageUrl;
  final bool applyImageRadius;
  final Color? backgroundColor;
  final VoidCallback? onpressed;
  final bool isNetworkImage;
  final double? width, height;
  final EdgeInsetsGeometry? padding;
  final BoxFit? fit;
  final BoxBorder? border;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? 10.0; // Adjusted default border radius

    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: applyImageRadius ? BorderRadius.circular(effectiveBorderRadius) : BorderRadius.zero,
          border: border,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(effectiveBorderRadius) : BorderRadius.zero,
          child: Image(
            image: isNetworkImage ? NetworkImage(ImageUrl) : AssetImage(ImageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}

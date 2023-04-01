import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
part 'image_cache.g.dart';

@CopyWith()
class CacheImage extends StatelessWidget {
  final String imageUrl;
  final Widget? placeHolder;
  final Alignment? alignment;
  final double? width;
  final double? height;

  const CacheImage({
    required this.imageUrl,
    this.placeHolder,
    this.alignment,
    this.width,
    this.height,
    
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width ?? 0,
      height: height ?? 0,
      placeholder: (context, url) => placeHolder ?? const SizedBox(),
      alignment: alignment ?? Alignment.topCenter,
    );
  }
}

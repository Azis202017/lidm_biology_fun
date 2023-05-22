import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import '../images/image_cache.dart';

class DiscussionWidget extends StatelessWidget {
  final String title;
  final String img;
  final String? description;
  final Function()? onTap;
  const DiscussionWidget(
      {super.key,
      required this.img,
      required this.title,
      this.description,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onTap: onTap,
      leading: CacheImage(
        imageUrl: img,
        alignment: Alignment.topLeft,
        width: 40,
        height: 40,
      ),
      title: Text(
        title,
        style: h4Bold,
      ),
      subtitle: Text(
        description ?? "",
        style: bodyRegular,
      ),
    );
  }
}

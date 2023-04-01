import 'package:flutter/material.dart';

import '../../theme/font.dart';
import '../images/image_cache.dart';

class HeaderAuth extends StatelessWidget {
  const HeaderAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CacheImage(
          imageUrl:
              'https://res.cloudinary.com/dkkga3pht/image/upload/v1680294350/Vector_1_mdyxat.png',
          width: 250,
          height: 150,
          placeHolder: Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Biology',
                    style: h1Bold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const CacheImage(
                    imageUrl:
                        'https://res.cloudinary.com/dkkga3pht/image/upload/v1680348162/microscope_ryq1e8.png',
                    width: 30,
                    height: 30,
                    placeHolder: Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Fun',
                style: h1Bold.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

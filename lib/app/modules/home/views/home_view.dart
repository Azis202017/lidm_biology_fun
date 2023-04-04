import 'package:biology_fun/app/shared/theme/color.dart';
import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/images/image_cache.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return GetBuilder<HomeController>(initState: (controller) {
      controller.controller?.fetchProfile();
    }, builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: controller.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 183,
                            color: primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 60.0,
                              left: 16,
                              right: 16,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${controller.user!.data!.username}',
                                          style: h2Bold.copyWith(
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Ayo tingkatkan belajarmu!',
                                          style: h5Regular.copyWith(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    const CacheImage(
                                      imageUrl:
                                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1680436809/Avatar_djrak9.png',
                                      width: 56,
                                      height: 56,
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: cardShadow,
                                  ),
                                  padding: const EdgeInsets.all(
                                    16,
                                  ),
                                  height: 96,
                                  margin: const EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Belajar hari ini',
                                            style: body2Regular.copyWith(
                                              color: grey2Color,
                                            ),
                                          ),
                                          Text(
                                            '10 Materi',
                                            style: bodyBold,
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        child: Text(
                                          'Belajar lagi',
                                          style: body2Regular.copyWith(
                                            color: primaryColor,
                                          ),
                                        ),
                                        onTap: () => print('aku ditap'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16,
                          top: 16.0,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 400,
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          childAspectRatio: 3 / 2,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20),
                                  itemCount: [10,20,30,40,60,70,90].length,
                                  itemBuilder: (BuildContext ctx, index) {
                                    return GestureDetector(
                                      onTap: () {
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Text('index'),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      );
    });
  }
}

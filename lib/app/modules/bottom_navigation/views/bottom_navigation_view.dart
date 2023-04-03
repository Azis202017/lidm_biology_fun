import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  const BottomNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(builder: (context) {
      return Scaffold(
        body: controller.page.elementAt(controller.selectedIndex),
        bottomNavigationBar: Container(
            height: 96,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Color.fromRGBO(
                    184,
                    184,
                    210,
                    0.5,
                  ),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      NetworkImage(
                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1680442695/on_xh4yuq.png'),
                    ),
                    label: 'Beranda',
                    tooltip: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      NetworkImage(
                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1680442690/off_cnevqy.png'),
                    ),
                    label: 'Pelajaran',
                    tooltip: 'Pelajaran',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      NetworkImage(
                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1680442677/off_rnpomg.png'),
                    ),
                    label: 'Pesan',
                    tooltip: 'Pesan',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      NetworkImage(
                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1680446906/off_unrbxb.png'),
                    ),
                    label: 'Akun',
                    tooltip: 'Akun',
                  ),
                ],
                currentIndex: controller.selectedIndex,
                elevation: 0,
                onTap: controller.onItemTapped,
              ),
            )),
      );
    });
  }
}

import 'package:biology_fun/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  int selectedIndex = 0;
  List<Widget> page = [
    const HomeView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),

  ];
  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}

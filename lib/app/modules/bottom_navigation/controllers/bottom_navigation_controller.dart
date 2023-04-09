import 'package:biology_fun/app/modules/account/views/account_view.dart';
import 'package:biology_fun/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  int selectedIndex = 0;
  List<Widget> page = [
    const HomeView(),
    const AccountView(),
  ];
  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}

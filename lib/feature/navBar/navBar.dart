import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_hopping/core/appColor.dart';
import 'package:furniture_hopping/feature/favourite/favouriteVeiw.dart';
import 'package:furniture_hopping/feature/home/home.dart';
import 'package:furniture_hopping/feature/notification.dart';
import 'package:furniture_hopping/feature/profile.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

List<Widget> screen = [homeVeiw(), favourite(), notification(), profile()];
int current = 0;

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[current],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: current,
            onTap: (value) {
              setState(() {
                current = value;
              });
            },
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedItemColor: appColor.blackColor,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/home.svg'), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/Vector.svg'), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/bell.svg'), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/person.svg'), label: ''),
            ]));
  }
}

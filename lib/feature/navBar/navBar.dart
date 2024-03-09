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

List<Widget> screen = [
  const homeVeiw(),
  const favourite(),
  const notification(),
  const profile()
];
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
                  icon: SvgPicture.asset('assets/home.svg'),
                  activeIcon: SvgPicture.asset('assets/home.svg',
                      colorFilter: const ColorFilter.mode(
                          Colors.black, BlendMode.srcIn)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/Vector.svg'),
                  activeIcon: SvgPicture.asset(
                    'assets/home.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/bell.svg'),
                  activeIcon: SvgPicture.asset('assets/bell.svg',
                      colorFilter: const ColorFilter.mode(
                          Colors.black, BlendMode.srcIn)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/person.svg'),
                  activeIcon: SvgPicture.asset('assets/person.svg',
                      colorFilter: const ColorFilter.mode(
                          Colors.black, BlendMode.srcIn)),
                  label: ''),
            ]));
  }
}

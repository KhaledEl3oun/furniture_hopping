import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_hopping/core/appColor.dart';
import 'package:furniture_hopping/feature/navBar/navBar.dart';


class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}


class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   width: 375,
          //   height: 455,
          //   decoration: BoxDecoration(
          //       color: appColor.whiteColor,
          //       image: DecorationImage(
          //           image:, fit: BoxFit.fill)),
          // )
        ],
      ),
    );
  }
}

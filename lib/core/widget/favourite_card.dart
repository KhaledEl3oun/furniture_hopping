import 'package:flutter/material.dart';
import 'package:furniture_hopping/core/appColor.dart';
import 'package:furniture_hopping/core/textStyle.dart';
import 'package:gap/gap.dart';

class favourite_widget extends StatelessWidget {
  const favourite_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: appColor.whiteColor,
              image: const DecorationImage(
                  image: AssetImage('assets/pic5.png'), fit: BoxFit.cover)),
        ),
        const Gap(20),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Coffee Table',
                    style: styleBodyText(),
                  ),
                  const Gap(110),
                  Image.asset('assets/Shape.png')
                ],
              ),
              Text(
                '\$ 50.00',
                style: styleNumberText(),
              ),
            ],
          ),
        )
      ],
    );
  }
}

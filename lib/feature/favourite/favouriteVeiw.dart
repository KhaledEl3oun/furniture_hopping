import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_hopping/core/textStyle.dart';
import 'package:furniture_hopping/core/appColor.dart';
import 'package:gap/gap.dart';

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/search.svg',
            height: 24,
            width: 24,
            fit: BoxFit.scaleDown,
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Favourite',
              style: styleTitleText(),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                'assets/Group.svg',
                height: 21,
                width: 22.5,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: appColor.whiteColor,
                            image: DecorationImage(
                                image: AssetImage('assets/pic5.png'),
                                fit: BoxFit.cover)),
                      ),
                      Gap(20),
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
                                Gap(130),
                                Column(
                                  children: [
                                    Image.asset('assets/Shape.png'),
                                  ],
                                )
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
                  ),
                  Gap(3),
                  Divider(),
                  Gap(3),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: appColor.whiteColor,
                            image: DecorationImage(
                                image: AssetImage('assets/pic3.png'),
                                fit: BoxFit.cover)),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Coffee chair',
                                  style: styleBodyText(),
                                ),
                                Gap(135),
                                Image.asset('assets/Shape.png')
                              ],
                            ),
                            Text(
                              '\$ 20.00',
                              style: styleNumberText(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Gap(3),
                  Divider(),
                  Gap(3),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: appColor.whiteColor,
                            image: DecorationImage(
                                image: AssetImage('assets/pic1.png'),
                                fit: BoxFit.cover)),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Minimal Stand',
                                  style: styleBodyText(),
                                ),
                                Gap(118),
                                Image.asset('assets/Shape.png')
                              ],
                            ),
                            Text(
                              '\$ 25.00',
                              style: styleNumberText(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Gap(3),
                  Divider(),
                  Gap(3),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: appColor.whiteColor,
                            image: DecorationImage(
                                image: AssetImage('assets/pic4.png'),
                                fit: BoxFit.cover)),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Minimal Desk',
                                  style: styleBodyText(),
                                ),
                                Gap(124),
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
                  ),
                  Gap(3),
                  Divider(),
                  Gap(3),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: appColor.whiteColor,
                            image: DecorationImage(
                                image: AssetImage('assets/pic2.png'),
                                fit: BoxFit.cover)),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Minimal lamp',
                                  style: styleBodyText(),
                                ),
                                Gap(124),
                                Image.asset('assets/Shape.png')
                              ],
                            ),
                            Text(
                              '\$ 12.00',
                              style: styleNumberText(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: appColor.blackColor,
                            foregroundColor: appColor.whiteColor),
                        onPressed: () {},
                        child: Text(
                          'Add all my cart',
                          style: styleBodyText(
                              color: appColor.whiteColor, fontSize: 18),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

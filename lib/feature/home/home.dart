import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_hopping/core/appColor.dart';
import 'package:furniture_hopping/core/textStyle.dart';
import 'package:furniture_hopping/core/users.dart';
import 'package:gap/gap.dart';

class homeVeiw extends StatefulWidget {
  const homeVeiw({super.key});

  @override
  State<homeVeiw> createState() => _homeVeiwState();
}

class _homeVeiwState extends State<homeVeiw> {
  List<usersModel> user = [
    usersModel(image: 'assets/star.svg', text: 'Popular'),
    usersModel(image: 'assets/chair.svg', text: 'Chair'),
    usersModel(image: 'assets/table.svg', text: 'Table'),
    usersModel(image: 'assets/sofa.svg', text: 'Armchair'),
    usersModel(image: 'assets/bed.svg', text: 'Bed'),
    usersModel(image: 'assets/star.svg', text: 'lamb'),
  ];

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
              'Make home',
              style: styleTitleText(color: appColor.grey2Color),
            ),
            Text(
              'BEAUTIFUL',
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
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: appColor.disColor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: SvgPicture.asset(
                                    user[index].image,
                                    height: 48,
                                    width: 48,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                                Text(
                                  user[index].text,
                                  style: styleBodyText(),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 30,
                          );
                        },
                        itemCount: 6),
                  ),
                ),
                //body
                const Gap(20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                  width: 157,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    image: DecorationImage(
                                        image: AssetImage('assets/pic2.png'),
                                        fit: BoxFit.cover),
                                  )),
                              const bag_widget()
                            ],
                          ),
                          const Gap(10),
                          Text(
                            'Black Simple Lamp',
                            style: styleBodyText(),
                          ),
                          const Gap(5),
                          Text(
                            '\$ 12.00',
                            style: styleNumberText(),
                          ),
                        ],
                      ),
                    ),
                    const Gap(25),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                  width: 157,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    image: DecorationImage(
                                        image: AssetImage('assets/pic1.png'),
                                        fit: BoxFit.cover),
                                  )),
                              const bag_widget()
                            ],
                          ),
                          const Gap(10),
                          Text(
                            'Minimal Stand',
                            style: styleBodyText(),
                          ),
                          const Gap(5),
                          Text(
                            '\$ 25.00',
                            style: styleNumberText(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                                width: 157,
                                height: 200,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  image: DecorationImage(
                                      image: AssetImage('assets/pic10.png'),
                                      fit: BoxFit.cover),
                                )),
                            const bag_widget()
                          ],
                        ),
                        const Gap(10),
                        Text(
                          'Coffee Chair',
                          style: styleBodyText(),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 20.00',
                          style: styleNumberText(),
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                                width: 157,
                                height: 200,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  image: DecorationImage(
                                      image: AssetImage('assets/pic4.png'),
                                      fit: BoxFit.cover),
                                )),
                            const bag_widget()
                          ],
                        ),
                        const Gap(10),
                        Text(
                          'Simble Desk',
                          style: styleBodyText(),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 50.00',
                          style: styleNumberText(),
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            )),
      ),
    );
  }
}

class bag_widget extends StatelessWidget {
  const bag_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 10,
      child: Container(
        margin: const EdgeInsets.fromLTRB(120, 160, 0, 0),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: const Color(0xff606060).withOpacity(.4),
            borderRadius: BorderRadius.circular(6)),
        child: SvgPicture.asset('assets/bag.svg',
            width: 20, height: 20, fit: BoxFit.scaleDown),
      ),
    );
  }
}

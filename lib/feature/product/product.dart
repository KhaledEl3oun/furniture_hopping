import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_hopping/core/appColor.dart';
import 'package:furniture_hopping/core/textStyle.dart';
import 'package:furniture_hopping/feature/home/home.dart';
import 'package:furniture_hopping/feature/navBar/navBar.dart';
import 'package:gap/gap.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

int num = 00;

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 450,
                height: 425,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                    color: appColor.whiteColor,
                    image: DecorationImage(
                        image: AssetImage('assets/pic1.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 30),
                height: 40,
                width: 40,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => homeVeiw(),
                      ));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: appColor.blackColor,
                    )),
                decoration: BoxDecoration(
                    color: appColor.whiteColor,
                    borderRadius: BorderRadius.circular(6)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Minimal Stand',
                      style: styleTitleText(fontSize: 24),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '\$ 50',
                      style: styleNumberText(fontSize: 30),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              num++;
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            color: appColor.blackColor,
                          )),
                      decoration: BoxDecoration(
                          color: Color(0xffe0e0e0),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    Gap(15),
                    Text(
                      '$num',
                      style: styleNumberText(fontSize: 20),
                    ),
                    Gap(15),
                    Container(
                      height: 40,
                      width: 40,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              num--;
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: appColor.blackColor,
                          )),
                      decoration: BoxDecoration(
                          color: Color(0xffe0e0e0),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Gap(7),
                    Text(
                      '4.5',
                      style: TextStyle(
                          fontSize: 20,
                          color: appColor.blackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    Gap(15),
                    Text(
                      '(50 reviews)',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Gap(10),
                Text(
                    'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. '),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                            'assets/marker 2.png',
                          )),
                          color: Color(0xffe0e0e0),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    Gap(20),
                    SizedBox(
                      width: 260,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: appColor.blackColor,
                              foregroundColor: appColor.whiteColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {},
                          child: Text(
                            'Add to cart',
                            style: styleBodyText(
                                color: appColor.whiteColor, fontSize: 18),
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

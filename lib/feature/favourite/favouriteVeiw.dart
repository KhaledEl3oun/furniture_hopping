import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_hopping/core/textStyle.dart';
import 'package:furniture_hopping/core/widget/favourite_card.dart';

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
        body: Expanded(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return const favourite_widget();
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 7),
              ),
            ),
          ),
        ));
  }
}

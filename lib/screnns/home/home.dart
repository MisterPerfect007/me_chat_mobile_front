import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:me_chat/widget/bottomNavBar/bottom_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: Container(
          padding: EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(children: [
            Row(children: [
              const Text(
                'Messages',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Container(),
              ),
              const Icon(
                IconlyLight.editSquare,
                color: Color(0xff00bc48),
                size: 30,
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffebebeb),
              ),
              child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      icon: Icon(IconlyLight.search),
                      border: InputBorder.none)),
            )
          ]),
        ));
  }
}

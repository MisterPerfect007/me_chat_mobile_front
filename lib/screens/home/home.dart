import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:me_chat/screens/home/home_widget/connected_friends.dart';

import 'package:me_chat/widget/bottomNavBar/bottom_nav_bar.dart';

import 'home_widget/search_input.dart';

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
            const SearchInput(),
            const SizedBox(
              height: 30,
            ),
            const ConnectedFriends(),
            const SizedBox(
              height: 20,
            ),
            Container(
              // decoration: BoxDecoration(
              //   border: Border.all()
              // ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column()
                  )
                ],
              ),
            )
          ]),
        ));
  }
}

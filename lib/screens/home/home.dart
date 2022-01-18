import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:me_chat/screens/home/home_widget/connected_friends.dart';

import 'package:me_chat/widget/bottomNavBar/bottom_nav_bar.dart';
import 'package:me_chat/widget/friendAvatar/friend_avatar.dart';

import 'home_widget/messages_list_item.dart';
import 'home_widget/search_input.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(children: [
            const Text(
              'Messages',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
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
        ),
        bottomNavigationBar: const BottomNavBar(),
        body: Container(
          padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SearchInput(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                // clipBehavior: Clip.hardEdge,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ConnectedFriends(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Messages',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MessagesListItem(),
                    SizedBox(
                      height: 30,
                    ),
                    MessagesListItem(),
                    SizedBox(
                      height: 30,
                    ),
                    MessagesListItem(),
                    SizedBox(
                      height: 30,
                    ),
                    MessagesListItem(),
                    SizedBox(
                      height: 30,
                    ),
                    MessagesListItem(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

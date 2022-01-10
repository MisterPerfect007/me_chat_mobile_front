import 'package:flutter/material.dart';

import 'local_widget/bottom_nav_bar_item.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int activeIndex = 0;
  changeActiveIndex(int index){
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
      decoration:  BoxDecoration(
        color: Colors.white,
          // border: Border(top: BorderSide(width: 3, color: Colors.grey)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0, -1),
              blurRadius: 2
            )
          ]),
      child: Row(
        children: [
          BottomNavBarItem(
            icon: IconlyLight.chat,
            color: Colors.red,
            index: 0,
            activeIndex: activeIndex,
            function: changeActiveIndex,
          ),
          const SizedBox(width: 30,),
          BottomNavBarItem(
            icon: IconlyLight.camera,
            color: Colors.green,
            index: 1,
            activeIndex: activeIndex,
            function: changeActiveIndex,
          ),
          const SizedBox(width: 30,),
          BottomNavBarItem(
            icon: IconlyLight.setting,
            color: Colors.orange,
            index: 2,
            activeIndex: activeIndex,
            function: changeActiveIndex,
          ),
        ],
      ),
    );
  }
}

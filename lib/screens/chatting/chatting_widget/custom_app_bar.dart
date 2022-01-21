import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:me_chat/widget/friendAvatar/friend_avatar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0, 1),
            blurRadius: 1)
      ]),
      child: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero, alignment: Alignment.centerLeft),
              onPressed: () {},
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(245, 245, 245, 1),
                        Color.fromRGBO(200, 200, 200, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.white),
                child: Icon(
                  IconlyBold.arrowLeft2,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Expanded(child: Container()),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Name Surname',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 2, bottom: 2, left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(colors: [
                        Color(0xff00bc48).withOpacity(0.05),
                        Color(0xff00bc48).withOpacity(0.1),
                        Color(0xff00bc48).withOpacity(0.2),
                      ])),
                  child: Text(
                    'Online',
                    style: TextStyle(
                        color: Color(0xff00bc48), fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Expanded(child: Container()),
            FriendAvatar()
          ],
        ),
      ),
    );
  }
}

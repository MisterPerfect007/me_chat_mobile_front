import 'package:flutter/material.dart';

import 'package:me_chat/widget/friendAvatar/friend_avatar.dart';
import 'package:me_chat/widget/friendName/friend_name.dart';

class MessagesListItem extends StatelessWidget {
  const MessagesListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const FriendAvatar(),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          children: [
            Row(children: [
              FriendName(),
              Expanded(child: Container()),
              Text(
                '23 min',
                style: TextStyle(
                  color: Color(0xff00bc48),
                  // color: Colors.grey.shade700,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              )
            ]),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text(
                  'Hi Mark ! Hope you\'re doing well\nHow about our meeting ?',
                  style: TextStyle(
                    color: Color(0xff00bc48),
                    // color: Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 25,
                  height: 25,
                  alignment: Alignment.center,
                  // padding: EdgeInsets.only(top: 5,bottom: 5, left: 5, right: 5),
                  decoration: const BoxDecoration(
                      color: Color(0xff00bc48),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ]);
  }
}

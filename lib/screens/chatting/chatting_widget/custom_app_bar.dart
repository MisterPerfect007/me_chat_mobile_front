import 'package:flutter/material.dart';
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
      decoration:  BoxDecoration(
        // gradient: const LinearGradient(
        //     begin: Alignment.bottomCenter,
        //     end: Alignment.topCenter,
        //     colors: [
        //       Color.fromRGBO(255, 255, 255, 1),
        //       Color.fromRGBO(220, 220, 220, 1),
        //     ]),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(0, 1),
            blurRadius: 2
          )
        ]
      ),
      child: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
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
                size: 30,
              ),
            ),
            Expanded(child: Container()),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [Text('Name'), Text('Online')],
            ),
            Expanded(child: Container()),
            FriendAvatar()
          ],
        ),
      ),
    );
  }
}

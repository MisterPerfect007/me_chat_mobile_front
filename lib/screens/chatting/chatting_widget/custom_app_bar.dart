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
      padding: EdgeInsets.only(left: 15, right: 15,),
      color: Colors.grey[400],
      child: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.white),
              child: Icon(
                IconlyLight.arrowLeft2,
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

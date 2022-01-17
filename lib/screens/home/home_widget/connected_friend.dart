import 'package:flutter/material.dart';
import 'package:me_chat/widget/friendAvatar/friend_avatar.dart';
import 'package:me_chat/widget/friendName/friend_name.dart';

class ConnectedFriend extends StatelessWidget {
  const ConnectedFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FriendAvatar(),
        SizedBox(height: 10,),
        FriendName()
      ],
    );
  }
}


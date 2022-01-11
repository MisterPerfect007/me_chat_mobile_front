import 'package:flutter/material.dart';
import 'package:me_chat/widget/friendAvatar/friend_avatar.dart';

class ConnectedFriend extends StatelessWidget {
  const ConnectedFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FriendAvatar(),
        Text(
          'Name',
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}

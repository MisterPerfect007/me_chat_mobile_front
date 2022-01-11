import 'package:flutter/material.dart';
import 'package:me_chat/screens/home/home_widget/connected_friend.dart';

class ConnectedFriends extends StatelessWidget {
  const ConnectedFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Connected',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 15,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ConnectedFriend(),
                SizedBox(width: 10,),
                ConnectedFriend(),
                SizedBox(width: 10,),
                ConnectedFriend(),
                SizedBox(width: 10,),
                ConnectedFriend(),
                SizedBox(width: 10,),
                ConnectedFriend()
              ],
            ),
          ),
        )
      ],
    );
  }
}

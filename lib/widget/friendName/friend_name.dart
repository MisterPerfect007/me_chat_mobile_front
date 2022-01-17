import 'package:flutter/material.dart';

class FriendName extends StatelessWidget {
  const FriendName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Name',
      style: TextStyle(
        fontWeight: FontWeight.w500
      ),
    );
  }
}

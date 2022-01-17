import 'package:flutter/material.dart';

class FriendAvatar extends StatelessWidget {
  const FriendAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        border: Border.all(color: Color(0xff00bc48), width: 2),
      ),
      child: Container(
        height: 55,
        width: 55,
        decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/prince-akachi-J1OScm_uHUQ-unsplash.jpg'))),
        // child: Image.asset('assets/ben-parker-OhKElOkQ3RE-unsplash.jpg')
      ),
    );
  }
}

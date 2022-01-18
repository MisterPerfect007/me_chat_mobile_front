import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:me_chat/screens/home/home_widget/connected_friend.dart';
import 'package:me_chat/widget/friendAvatar/friend_avatar.dart';

class Chatting extends StatelessWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
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
          ),
          preferredSize: Size.fromHeight(screenHeight / 11),
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
              ),
            color: Colors.white,
          ),
          height: screenHeight * 10 / 11,
          child: SafeArea(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                          children: [
                            Text('data'),
                            SizedBox(height: 500,),
                            Text('data'),
                            SizedBox(height: 10,),
                            Text('data'),
                            SizedBox(height: 10,),
                            Text('data'),
                            SizedBox(height: 10,),
                            Text('data'),
                            Expanded(child: Container()),
                            Text('data'),
                            SizedBox(height: 10,),
                          ],
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Message'),
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send))
                ],
              ),
            ],
          )),
        ));
  }
}

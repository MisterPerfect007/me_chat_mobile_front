import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:me_chat/screens/chatting/chatting_widget/outcoming_msg.dart';
import 'package:me_chat/screens/home/home_widget/connected_friend.dart';
import 'package:me_chat/widget/friendAvatar/friend_avatar.dart';

import 'chatting_widget/custom_app_bar.dart';
import 'chatting_widget/msg_sending_input.dart';
import 'chatting_widget/incoming_msg.dart';

class Chatting extends StatelessWidget {
  Chatting({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  bool _needToScrollDown = true;

  void _scrollToBottom() async {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    if (_needToScrollDown) {
      WidgetsBinding.instance
          ?.addPostFrameCallback((timeStamp) => _scrollToBottom());
      _needToScrollDown = false;
    }

    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: PreferredSize(
          child: CustomAppBar(),
          preferredSize: Size.fromHeight(80),
        ),
        body: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            // height: screenHeight,
            child: SafeArea(
                child: Stack(children: [
              Container(
                height: screenHeight - 80,
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overscroll) {
                    overscroll.disallowIndicator();
                    return true;
                  },
                  child: SingleChildScrollView(
                    child: Container(
                      height: screenHeight - 123,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: NotificationListener<
                                OverscrollIndicatorNotification>(
                              onNotification: (overscroll) {
                                overscroll.disallowIndicator();
                                return true;
                              },
                              child: CustomScrollView(
                                controller: _scrollController,
                                physics: ClampingScrollPhysics(),
                                slivers: [
                                  SliverFillRemaining(
                                      hasScrollBody: false,
                                      child: Container(
                                        // color: Colors.green.shade300,
                                        child: Column(
                                          children: [
                                            Text('databb'),
                                            SizedBox(
                                              height: 500,
                                            ),
                                            IncomingMsg(),
                                            OutgoingMsg(),
                                            IncomingMsg(),
                                            OutgoingMsg(),
                                            IncomingMsg(),
                                            OutgoingMsg(),
                                            IncomingMsg(),
                                            OutgoingMsg(),
                                            IncomingMsg(),
                                            OutgoingMsg(),
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top: 15, bottom: 5),
                            child: MsgSendingInput(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 75,
                decoration:  BoxDecoration(
                  
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.05),
                    ]
                  )
                ),
              ),
            ]))));
  }
}

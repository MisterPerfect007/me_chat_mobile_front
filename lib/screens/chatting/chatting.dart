import 'dart:io';

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

  void _scrollToBottom()  {
     _scrollController
    .animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    if (_needToScrollDown) {
      () async {
        WidgetsBinding.instance
          ?.addPostFrameCallback((timeStamp) => _scrollToBottom());
        _needToScrollDown = false;
      };
    }

    double screenHeight = MediaQuery.of(context).size.height;
    double bottomPadding = MediaQuery.of(context).padding.bottom;
    double viewInsets = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xffd3d3d3),
        appBar: const PreferredSize(
          child: CustomAppBar(),
          preferredSize: Size.fromHeight(80),
        ),
        body: Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 5,
              bottom: viewInsets,
            ),
            decoration:  const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(-1, -1),
                  color: Color(0xff9f9f9f),
                  blurRadius: 3,
                  spreadRadius: -1,
                )
              ],
              borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(30), topRight: Radius.circular(30)
                  ),
              color: Colors.white,
            ),
            // height: screenHeight,
            child: SafeArea(
              child: Stack(children: [
                Positioned(
                  // top: bottomPadding,
                  child: Container(
                    // color: Colors.green.shade200,
                    // height: screenHeight - (80 + bottomPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: NotificationListener<
                              OverscrollIndicatorNotification>(
                            onNotification: (overscroll) {
                              overscroll.disallowIndicator();
                              return true;
                            },
                            child: SingleChildScrollView(
                                // anchor: 1,
                                reverse: true,
                                controller: _scrollController,
                                physics: ClampingScrollPhysics(),
                                child: Container(
                                  // color: Colors.green.shade300,
                                  child: Column(
                                    children: const [
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
                                )),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(
                            top: 5,
                          ),
                          child: MsgSendingInput(),
                        ),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   height: 20,
                //   decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //           begin: Alignment.topCenter,
                //           end: Alignment.bottomCenter,
                //           colors: [
                //         Colors.white,
                //         Colors.white.withOpacity(0.05),
                //       ])),
                // ),
              ]),
            )));
  }
}

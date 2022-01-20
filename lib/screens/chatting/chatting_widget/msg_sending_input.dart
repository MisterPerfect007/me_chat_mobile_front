import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';



class MsgSendingInput extends StatelessWidget {
  const MsgSendingInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              // height: 50,
              padding: const EdgeInsets.only(
                left: 20,
                right: 15,
              ),
              // margin: const EdgeInsets.only(
              //   top: 20,
              // ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color.fromRGBO(223, 223, 223, 1)),
              child: const TextField(
                maxLines: 3,
                minLines: 1,
                decoration: InputDecoration(
                    hintText: 'Message', border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff60f499),
                      Color(0xff00bc48),
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Transform.rotate(
              angle: 0,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(IconlyBold.send),
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

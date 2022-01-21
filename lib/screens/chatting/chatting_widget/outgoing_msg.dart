import 'package:flutter/material.dart';


class OutgoingMsg extends StatelessWidget {
  const OutgoingMsg({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20,
      // color: Colors.grey.shade200,
      // padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                // color: Color(0xffc2f8ff),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffd8fbff),
                    Color(0xffffffff),
                  ]
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(0, 0),
                    blurRadius: 1
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                )),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Salut Hervé !',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w600,
                    fontSize: 13
                  ),
                  
                ),
                SizedBox(width: 20),
                Text(
                  '12:10',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 10
                  ),
                  )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
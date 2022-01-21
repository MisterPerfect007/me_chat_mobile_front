import 'package:flutter/material.dart';



class IncomingMsg extends StatelessWidget {
  const IncomingMsg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20,
      // color: Colors.grey.shade200,
      // padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration:  BoxDecoration(
                // color: Color(0xffefffed),
                // #ddffd8;
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Color(0xffffffff),
                    Color(0xffe4ffe0)
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
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(20),
                )),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Hé Salut Man ee\nOn dit quoi ?',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    // fontSize: 12
                  ),
                  
                ),
                SizedBox(width: 20),
                Text(
                  '12:10',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 11
                  ),
                  )
              ],
            ),
          ),
          // Expanded(
          //   child: Container(),
          // ),
        ],
      ),
    );
  }
}

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
            decoration: const BoxDecoration(
                color: Color(0xffb1edff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Salut Hervé !',
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
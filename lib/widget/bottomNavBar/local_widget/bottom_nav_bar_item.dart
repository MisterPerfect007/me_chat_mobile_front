import 'package:flutter/material.dart';

class BottomNavBarItem extends StatefulWidget {
  final IconData icon;
  final Function function;
  final int index;
  final int activeIndex;

  const BottomNavBarItem(
      {Key? key,
      required this.icon,
      required this.function,
      required this.index,
      required this.activeIndex,
      })
      : super(key: key);

  @override
  State<BottomNavBarItem> createState() => _BottomNavBarItemState();
}

class _BottomNavBarItemState extends State<BottomNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => {
          widget.function(widget.index)
        },
        child: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Icon(
            widget.icon,
            size: 30,
            color: widget.activeIndex == widget.index ? Color(0xff00bc48) : Colors.grey,
          ),
        ),
      ),
    );
  }
}

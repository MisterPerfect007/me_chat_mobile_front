import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffebebeb),
        ),
        child: TextField(
            style: const TextStyle(fontSize: 18),
            cursorColor: Colors.grey,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
              icon: Icon(
                IconlyLight.search,
                color: Colors.grey[600],
                size: 30,
              ),
              border: InputBorder.none,
            )));
  }
}

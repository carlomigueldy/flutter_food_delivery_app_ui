import 'package:flutter/material.dart';

import '../../../theme/box_shadow.dart';
import '../../../theme/colors.dart';

class HomePageSearchBar extends StatelessWidget {
  const HomePageSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          kBoxShadow,
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            size: 32,
            color: Colors.grey[400],
          ),
          border: InputBorder.none,
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 20,
          ),
          suffixIcon: Container(
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            decoration: BoxDecoration(
              color: getColor(type: ColorType.secondary),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.sort,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

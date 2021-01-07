import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20,
      ),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   boxShadow: [
      //     kBoxShadow,
      //   ],
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(30),
      //     bottomRight: Radius.circular(30),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 34,
                color: getColor(
                  type: ColorType.secondary,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Mom's home",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down,
                size: 26,
                color: getColor(
                  type: ColorType.primary,
                ),
              )
            ],
          ),
          Row(children: [
            Text(
              'Php 10,600.00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: getColor(type: ColorType.primary),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ]),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../models/food.dart';
import '../../views/home/home_viewmodel.dart';

class HomePageOrderAgainList extends StatelessWidget {
  final HomeViewModel model;

  const HomePageOrderAgainList({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Food> foods = model.foods;

    return Container(
      height: 225,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemBuilder: (context, index) {
          bool isFirst = index == 0;
          bool isLast = (foods.length - 1) == index;
          Food food = foods[index];

          return Container(
            width: 225,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(
                  food.imageUrl,
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.05),
                  BlendMode.srcOver,
                ),
              ),
            ),
            margin: isFirst
                ? const EdgeInsets.only(left: 10)
                : isLast
                    ? const EdgeInsets.only(right: 10)
                    : null,
            child: Center(
              child: Text(food.name),
            ),
          );
        },
      ),
    );
  }
}

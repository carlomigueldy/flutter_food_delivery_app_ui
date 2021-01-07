import 'package:flutter/material.dart';

import '../../../models/food_category.dart';
import '../../views/home/home_viewmodel.dart';

class HomePageCategoryList extends StatelessWidget {
  final HomeViewModel model;

  const HomePageCategoryList({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FoodCategory> foodCategories = model.foodCategories;

    return Container(
      height: 100,
      child: ListView.separated(
        itemCount: foodCategories.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 5),
        itemBuilder: (context, index) {
          bool isFirst = index == 0;
          bool isLast = (foodCategories.length - 1) == index;
          FoodCategory foodCategory = foodCategories[index];

          return Container(
            height: 100,
            width: 100,
            margin: isFirst
                ? const EdgeInsets.only(left: 10)
                : isLast
                    ? const EdgeInsets.only(right: 10)
                    : null,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  foodCategory.imageUrl,
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.05),
                  BlendMode.srcOver,
                ),
              ),
            ),
            child: Center(
              child: Text(
                foodCategory.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 50,
                      ),
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}

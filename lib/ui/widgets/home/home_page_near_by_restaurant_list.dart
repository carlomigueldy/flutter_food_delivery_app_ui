import 'package:flutter/material.dart';

import '../../../models/restaurant.dart';
import '../../views/home/home_viewmodel.dart';

class HomePageNearByRestaurantList extends StatelessWidget {
  final HomeViewModel model;

  const HomePageNearByRestaurantList({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Restaurant> restaurants = model.restaurants;
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 325,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemBuilder: (context, index) {
          bool isFirst = index == 0;
          bool isLast = (restaurants.length - 1) == index;
          Restaurant restaurant = restaurants[index];

          return Container(
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(
                  restaurant.imageUrl,
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
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: restaurantInformation(restaurant: restaurant),
                ),
                Positioned(
                  top: 0,
                  right: size.width * 0.1,
                  child: Container(
                    height: 45,
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.grey,
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container restaurantInformation({@required Restaurant restaurant}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                restaurant.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '\$\$\$',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                Flexible(
                  child: Text(
                    ' | American, burger, Fast food',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                      ),
                      SizedBox(width: 5),
                      Text(
                        restaurant.rating.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 5),
                      Text(
                        restaurant.estimatedTimeOfDelivery,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

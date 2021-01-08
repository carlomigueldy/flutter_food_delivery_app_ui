import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_starter/app/locator.dart';
import 'package:stacked_architecture_starter/models/restaurant.dart';
import 'package:stacked_architecture_starter/services/alert_service.dart';
import 'package:stacked_architecture_starter/services/api/restaurant_service.dart';

class RestaurantDetailViewModel extends FutureViewModel<Restaurant> {
  final RestaurantService _restaurantService = locator<RestaurantService>();
  final AlertService _alertService = locator<AlertService>();

  final int restaurantId;

  RestaurantDetailViewModel({
    this.restaurantId,
  });

  List<String> get menuItems => [
        'Picked for you',
        'Bundles',
        'Appetizers',
        'Meal',
        'Combos',
      ];

  @override
  Future<Restaurant> futureToRun() async {
    return await _restaurantService.fetchById(id: restaurantId);
  }

  addToCart() {
    _alertService.showSnackbar(
      message: 'Added to cart',
      backgroundColor: Colors.blue[400],
      // customMessage: Text(
      //   'Added to cart',
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      customIcon: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      mainButton: FlatButton(
        child: Text(
          'View Cart'.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () => null,
      ),
    );
  }
}

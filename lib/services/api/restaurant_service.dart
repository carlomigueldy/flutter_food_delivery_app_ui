import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

import '../../models/restaurant.dart';

@lazySingleton
class RestaurantService with ReactiveServiceMixin {
  RxValue<List<Restaurant>> _restaurants = RxValue<List<Restaurant>>(
    initial: [],
  );

  List<Restaurant> get restaurants => _restaurants.value;
}

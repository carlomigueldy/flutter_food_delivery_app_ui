import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

import '../../models/food.dart';

@lazySingleton
class FoodService with ReactiveServiceMixin {
  RxValue<List<Food>> _foods = RxValue<List<Food>>();

  List<Food> get foods => _foods.value;
}

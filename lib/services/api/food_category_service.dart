import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

import '../../models/food_category.dart';

@lazySingleton
class FoodCategoryService with ReactiveServiceMixin {
  RxValue<List<FoodCategory>> _foodCategories = RxValue<List<FoodCategory>>(
    initial: [],
  );

  List<FoodCategory> get foodCategories => _foodCategories.value;
}

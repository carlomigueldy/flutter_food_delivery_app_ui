import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/home/home_page_header.dart';
import '../../widgets/home/home_page_order_again_list.dart';
import '../../widgets/home/home_page_search_bar.dart';
import '../../../theme/colors.dart';
import '../../widgets/home/home_page_category_list.dart';
import '../../widgets/home/home_page_near_by_restaurant_list.dart';
import 'home_viewmodel.dart' show HomeViewModel;

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            fixedColor: Colors.grey[800],
            unselectedItemColor: Colors.grey[800],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account',
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                HomePageHeader(),
                SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Morning Sophia',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Let's try our services!",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                HomePageSearchBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: HomePageCategoryList(
                    model: model,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: sectionHeader(title: 'Near Restaurants'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: HomePageNearByRestaurantList(
                    model: model,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: sectionHeader(title: 'Order Again'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: HomePageOrderAgainList(
                    model: model,
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row sectionHeader({@required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        MaterialButton(
          child: Row(
            children: [
              Text(
                'See All'.toUpperCase(),
                style: TextStyle(
                  color: getColor(type: ColorType.primary),
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_right_alt,
                color: getColor(type: ColorType.primary),
              ),
            ],
          ),
          onPressed: () => null,
        )
      ],
    );
  }
}

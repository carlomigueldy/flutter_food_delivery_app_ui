import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_starter/theme/box_shadow.dart';
import 'package:stacked_architecture_starter/theme/colors.dart';

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

class HomePageNearByRestaurantList extends StatelessWidget {
  final HomeViewModel model;

  const HomePageNearByRestaurantList({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: model.nearByRestaurants.length,
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemBuilder: (context, index) {
          bool isFirst = index == 0;
          bool isLast = (model.nearByRestaurants.length - 1) == index;
          return Container(
            width: 275,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: isFirst
                ? const EdgeInsets.only(left: 10)
                : isLast
                    ? const EdgeInsets.only(right: 10)
                    : null,
            child: Center(
              child: Text('Hey'),
            ),
          );
        },
      ),
    );
  }
}

class HomePageOrderAgainList extends StatelessWidget {
  final HomeViewModel model;

  const HomePageOrderAgainList({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: model.nearByRestaurants.length,
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemBuilder: (context, index) {
          bool isFirst = index == 0;
          bool isLast = (model.nearByRestaurants.length - 1) == index;
          return Container(
            width: 225,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: isFirst
                ? const EdgeInsets.only(left: 10)
                : isLast
                    ? const EdgeInsets.only(right: 10)
                    : null,
            child: Center(
              child: Text('Hey'),
            ),
          );
        },
      ),
    );
  }
}

class HomePageCategoryList extends StatelessWidget {
  final HomeViewModel model;

  const HomePageCategoryList({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
        itemCount: model.categories.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 5),
        itemBuilder: (context, index) {
          bool isFirst = index == 0;
          bool isLast = (model.categories.length - 1) == index;

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
            ),
            child: Center(
              child: Text('Hey'),
            ),
          );
        },
      ),
    );
  }
}

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
              Icons.cloud_queue,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

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

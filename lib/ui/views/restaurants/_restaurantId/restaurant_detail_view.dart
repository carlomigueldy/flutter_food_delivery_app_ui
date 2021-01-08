import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_starter/models/food.dart';

import 'restaurant_detail_viewmodel.dart';

class RestaurantDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RouteData routeData = RouteData.of(context);

    return ViewModelBuilder<RestaurantDetailViewModel>.reactive(
      viewModelBuilder: () => RestaurantDetailViewModel(
        restaurantId: routeData.pathParams['restaurantId'].intValue,
      ),
      builder: (
        BuildContext context,
        RestaurantDetailViewModel model,
        Widget child,
      ) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: Colors.grey[50],
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () => null,
                ),
                IconButton(
                  icon: Icon(Icons.save_alt),
                  onPressed: () => null,
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: model.isBusy
                  ? Text('Loading...')
                  : RestaurantInfo(model: model),
            ),
          ),
        );
      },
    );
  }
}

class RestaurantInfo extends StatelessWidget {
  final RestaurantDetailViewModel model;

  const RestaurantInfo({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RestaurantImage(model: model),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RestaurantInfoHeader(model: model),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RestaurantInfoSubheader(model: model),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RestaurantInfoSubheaderItem(
                model: model,
                icon: Icons.location_on_outlined,
                text: 'Las vegas, Rositta Sq. Valit St.',
              ),
              FlatButton(
                onPressed: () => null,
                child: Text(
                  'Show on Map'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Hours of work:',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '10am - 11pm',
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Our Menu',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.search_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: model.menuItems.length,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemBuilder: (context, index) {
                bool isFirst = index == 0;
                bool isLast = (model.menuItems.length - 1) == index;
                String menu = model.menuItems[index];

                return Container(
                  width: 170,
                  padding: isFirst
                      ? const EdgeInsets.only(left: 8.0)
                      : isLast
                          ? const EdgeInsets.only(right: 8.0)
                          : null,
                  child: isFirst
                      ? MaterialButton(
                          color: Colors.yellow[600],
                          child: Text(
                            menu.toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () => null,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      : FlatButton(
                          child: Text(
                            menu.toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          onPressed: () => null,
                        ),
                );
              },
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Picked for you',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Container(
          height: 500,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            itemCount: model.data.foods.length,
            itemBuilder: (context, index) {
              Food food = model.data.foods[index];

              return ListTile(
                isThreeLine: true,
                title: Text(food.name),
                subtitle: Text(
                  'Served with a side of Steamed rice',
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Container(
                  height: 100,
                  child: Text(
                    'Php ' + food.price.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () => model.addToCart(),
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(food.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class RestaurantInfoSubheader extends StatelessWidget {
  final RestaurantDetailViewModel model;

  const RestaurantInfoSubheader({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RestaurantInfoSubheaderItem(
          model: model,
          icon: Icons.sort,
          text: '\$\$\$',
        ),
        RestaurantInfoSubheaderItem(
          model: model,
          icon: Icons.attach_money,
          text: 'Php 6.00',
        ),
        RestaurantInfoSubheaderItem(
          model: model,
          icon: Icons.attach_money,
          text: model.data.estimatedTimeOfDelivery,
        ),
      ],
    );
  }
}

class RestaurantInfoSubheaderItem extends StatelessWidget {
  final RestaurantDetailViewModel model;

  const RestaurantInfoSubheaderItem({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.model,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    Color iconColor = Colors.grey;

    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(),
        ),
      ],
    );
  }
}

class RestaurantInfoHeader extends StatelessWidget {
  final RestaurantDetailViewModel model;

  const RestaurantInfoHeader({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              model.data.name,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                  size: 32,
                ),
                SizedBox(width: 10),
                Text(
                  model.data.rating.toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          model.data.categories.map((e) => e.name).join(', '),
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class RestaurantImage extends StatelessWidget {
  final RestaurantDetailViewModel model;

  const RestaurantImage({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(model.data.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 5,
            right: 10,
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Icon(Icons.image_outlined),
                  SizedBox(width: 5),
                  Text('Gallery'),
                ],
              ),
              color: Colors.black,
              onPressed: () => null,
            ),
          )
        ],
      ),
    );
  }
}

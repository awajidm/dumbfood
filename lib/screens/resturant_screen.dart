import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/widgets/rating_stars.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantScreen({this.restaurant});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 220.0,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 30.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                      color: Theme.of(context).primaryColor,
                      iconSize: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "0.2 miles away",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                RatingStars(widget.restaurant.rating),
                SizedBox(height: 6.0,),
                Text(widget.restaurant.address)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // ignore: deprecated_member_use
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                onPressed: () {},
                child: Text(
                  "Reviews",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                onPressed: () {},
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PopularRestaurent {
  final String image;
  final String title;
  final String time;

  PopularRestaurent({
    required this.image,
    required this.title,
    required this.time,
  });
}

List<PopularRestaurent> popularRestaurentllist = [
  PopularRestaurent(
    image: "images/circlo-restaurent.png",
    title: "Circlo Resto",
    time: "10 mins",
  ),
  PopularRestaurent(
    image: "images/lovy-food.jpg",
    title: "Lovy Food",
    time: "13 mins",
  ),
  PopularRestaurent(
    image: "images/lovy-food.jpg",
    title: "Haty Food",
    time: "21 mins",
  ),
];

class PopularMenu {
  final String image;
  final String title;
  final int price;
  final String subTitle;

  PopularMenu({
    required this.image,
    required this.subTitle,
    required this.title,
    required this.price,
  });
}

List<PopularMenu> popularMenuList = [
  PopularMenu(
    image: "images/fresh-salad.png",
    title: "Fresh Salad",
    price: 10,
    subTitle: "Cloudy Resto",
  ),
  PopularMenu(
    image: "images/original salad.png",
    title: "Original Salad",
    price: 8,
    subTitle: "Lovy Food",
  ),
  PopularMenu(
    image: "images/ice-cream.png",
    title: "Yummie Ice Cream",
    price: 6,
    subTitle: "Circlo Resto",
  ),
];

class AppColors {
  static const kbackgroundColor = Color(0xfffafafe);
  static const kpColor = Color(0xffFF1843);
  static const kshadowColor = Color(0xfff6f7fe);
  static const kWhite = Colors.white;
  static const kYellow = Color(0xffffd057);
  static const kplightColor = Color(0xffFF768E);
}

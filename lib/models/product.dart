import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String tarif;
  final double narxi;
  final String holat;
  final String image;

  Product({
    required this.image,
    required this.id,
    required this.title,
    required this.tarif,
    required this.narxi,
    required this.holat,
  });
}

class Products with ChangeNotifier {
  List<Product> _list = [
    Product(
        image: 'assets/images/p1.jpg',
        id: '1 ',
        title: "Playstation 1",
        tarif: 'Amazing PS',
        narxi: 50,
        holat: "20% SALE"),
    Product(
        image: 'assets/images/p2.jpg',
        id: '1 ',
        title: "Playstation 2",
        tarif: 'Amazing PS',
        narxi: 70,
        holat: "20% SALE"),
    Product(
        image: 'assets/images/p3.jpg',
        id: '1 ',
        title: "Playstation 3",
        tarif: 'Amazing PS',
        narxi: 120,
        holat: "20% SALE"),
    Product(
        image: 'assets/images/p4.jpg',
        id: '1 ',
        title: "Playstation 4",
        tarif: 'Amazing PS',
        narxi: 250,
        holat: "20% SALE"),
    Product(
        image: 'assets/images/p5.jpg',
        id: '1 ',
        title: "Playstation 5",
        tarif: 'Amazing PS',
        narxi: 350,
        holat: "20% SALE"),
  ];

  List<Product> get list {
    return [..._list];
  }
}

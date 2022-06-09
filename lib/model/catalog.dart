import 'package:flutter/material.dart';

class CatalogModel {
  static final items = List<Item>.generate(100, (i) => Item(
    id: i,
    name: "iPhone ${i} pro",
    originalPrice: 49999,
    price: 10000,
    image: 'https://example.com',
    discount: 0.2,
  ));
  // static final items = [
  //   Item(
  //     id: 1,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 2,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 3,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 4,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 5,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 6,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 7,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 8,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 9,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   ),
  //   Item(
  //     id: 10,
  //     name: "iPhone 13 pro",
  //     originalPrice: 49999,
  //     price: 10000,
  //     image: 'https://example.com',
  //     discount: 0.2,
  //   )
  // ];
}

class Item {
  final int id;
  final String name;
  final num originalPrice;
  final num price;
  final String image;
  final double discount;

  Item({
    @required this.id,
    @required this.name,
    @required this.originalPrice,
    @required this.price,
    @required this.image,
    @required this.discount
  });
}

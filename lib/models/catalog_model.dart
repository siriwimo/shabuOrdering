
import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'ผักบุ้ง',
    'ผักกาดขาว',
    'ผักกวางตุ้ง',
    'เห็ดเข็มทอง',
    'หมูสามชั้นสไลด์',
    'หมูสันคอ',
    'สโมกกี้เบค่อน',
    'เบค่อนพันไส้กรอก',
    'ไส้กรอก',
    'เบค่อน',
  ];

  static List<String> itemPicture = [
    'assets/pic1.png',
    'assets/pic2.png',
    'assets/pic3.png',
    'assets/pic9.png',
    'assets/pic4.png',
    'assets/pic5.png',
    'assets/pic6.png',
    'assets/pic7.png',
    'assets/pic8.png',
    'assets/pic10.png',
  ];
  /// Get item by [id].
  ///
  /// In this sample, the catalog is infinite, looping over [itemNames].
  Item getById(int id) => Item(id, itemNames[id], itemPicture[id]);

  /// Get item by its position in the catalog.
  Item getByPosition(int position) {
    // In this simplified case, an item's position in the catalog
    // is also its id.
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final String pic;
  final int price = 50;

  Item(this.id, this.name, this.pic);


  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
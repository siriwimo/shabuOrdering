// // Copyright 2019 The Flutter team. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.

// import 'package:flutter/foundation.dart';
// import 'package:provider_shopper/models/catalog.dart';

// class NotificationModel extends ChangeNotifier {
//   /// The private field backing [catalog].
//   late CatalogModel _catalog;

//   /// Internal, private state of the Notification. Stores the ids of each item.
//   final List<int> _itemIds = [];

//   /// The current catalog. Used to construct items from numeric ids.
//   CatalogModel get catalog => _catalog;

//   set catalog(CatalogModel newCatalog) {
//     _catalog = newCatalog;
//     // Notify listeners, in case the new catalog provides information
//     // different from the previous one. For example, availability of an item
//     // might have changed.
//     notifyListeners();
//   }
 
//   /// List of items in the Notification.
//   List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

//   /// The current total price of all items.
//   int get totalPrice =>
//       items.fold(0, (total, current) => total + current.price);

//   /// Adds [item] to Notification. This is the only way to modify the Notification from outside.
//   void add(Item item) {
//     _itemIds.add(item.id);
//     // This line tells [Model] that it should rebuild the widgets that
//     // depend on it.
//     notifyListeners();
//   }

//   void remove(Item item) {
//     _itemIds.remove(item.id);
//     // Don't forget to tell dependent widgets to rebuild _every time_
//     // you change the model.
//     notifyListeners();
//   }
// }

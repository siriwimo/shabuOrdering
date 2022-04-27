import 'package:get/get.dart';
import 'package:provider_shopper/models/catalog.dart';

class CartController extends GetxController{
  var _items = {}.obs;

  void addProduct (Item item){
    if(_items.containsKey(item)){
      _items[item] += 1;
    }else {
      _items[item] = 1;
    }
    Get.snackbar("Product Added", "You have added the ${item.name} to the cart",
    snackPosition: SnackPosition.BOTTOM,
    duration: const Duration(seconds: 2),
    );
  }

    void removeProduct(Item item) {
    if (_items.containsKey(item) && _items[item] ==1) {
      _items.removeWhere((key, value) => key == item);
    }
    else {
      _items[item] -= 1;
    }

    Get.snackbar("Product Removed", "You have removed the ${item.name} ",
    snackPosition: SnackPosition.BOTTOM,
    duration: const Duration(seconds: 2),
    );
  }
}


// class CartController extends GetxController {
  
//   var _items = {}.obs;

//   get items => _items;

//   get itemSubtotal => _items.entries.map((item) => item.key.price * item.value).toList();

//   get total => _items.entries.map((item) => item.key.price * item.value).toList().reduce((value, element) => value + element).toStringAsFixed(2);


//   void addProduct(Item item) {
//     if (_items.containsKey(item)) {
//       _items[item] += 1;
//     }
//     else {
//       _items[item] = 1;
//     }

//     Get.snackbar("Product Added", "You have added the ${item.name} to the cart",
//     snackPosition: SnackPosition.BOTTOM,
//     duration: const Duration(seconds: 2),
//     );
//   }

//   void removeProduct(Item item) {
//     if (_items.containsKey(item) && _items[item] ==1) {
//       _items.removeWhere((key, value) => key == item);
//     }
//     else {
//       _items[item] -= 1;
//     }

//     Get.snackbar("Product Removed", "You have removed the ${item.name} ",
//     snackPosition: SnackPosition.BOTTOM,
//     duration: const Duration(seconds: 2),
//     );
//   }

// }
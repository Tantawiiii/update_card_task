
import 'package:flutter/foundation.dart';

import '../dummy_data/local_data.dart';
import '../dummy_data/online_data.dart';
import '../models/cart_item_model.dart';
import '../utils/get_previous_data.dart';

class CartProvider {
  final List<CartItem> cartItems = List.from(localCartITems, growable: true);

  final onlinePlaces = placesList;

  final onlineProducts = productsList;

  num _total = 0;
  num get totalCartPrice {
    _total = 0;
    for (final item in cartItems) {
      _total += item.totalPrice;
    }
    return _total;
  }

  void updateCart() {
    //1- TODO: implement updateCart
    //2- print items after update
    //3- Display the changes, that were made on user cart, on home page.
   _printItemsAfterUpdate(cartItems);
  }
  _printItemsAfterUpdate(List<CartItem> localCartItems) {
    for (final item in localCartItems) {

      if (kDebugMode) {
        print('############ START of cartItem id: ${item.id} ##########');
        print('Place: ${item.place.title}');
        print('isActive: ${item.place.isActive}');
        print('Place image: ${item.place.placeImage}');
        print('Place shipping price: ${item.place.shippingPrice}');

      }

      // Check for changes and display toast/notification if necessary
      _checkForChanges(item);

      for (final product in item.products) {
        _printCartProduct(product);
      }
      print('CartItem total price: ${item.totalPrice}');
      print('############ END of cartItem id: ${item.id} ##########');
    }
    print("Total cart price: $totalCartPrice");
  }
  _printCartProduct(CartProduct product) {
    if (kDebugMode) {
      print('Product: ${product.title}');
      print('Product description: ${product.description}');
      print('Product image : ${product.image}');
      print('Product price: ${product.price}');
      print('Product min items: ${product.minItems}');
      print('Product available qty: ${product.availableQuantity}');
      print('Product selected quantity: ${product.selectedQuantity}');
      print('Product total price: ${product.totalPrice}');
      print('############ END of Product ${product.title} ##########');
    }

  }
}

bool _checkForChanges(CartItem item) {
  CartItem previousData = getPreviousDataForItem(item);

  bool changesDetected = false;

  if (item.place.isActive == false || previousData.place.isActive == false) {
    print('lol >> Place ${item.place.title} Active has Denied.');
    changesDetected = true;
  }

  if (item.place.shippingPrice != previousData.place.shippingPrice) {
    print('lol >>  Place ${item.place.title}  shippingPrice has changed.');

    changesDetected = true;
  }

  for (var product in item.products) {
    var previousProduct = previousData.products.firstWhere(
          (prevProduct) => prevProduct.id == product.id,
      //  default CartProduct if no previous product is found
      orElse: () => CartProduct(
      id: -1,
      title: '',
      description: '',
      price: 0.0,
      image: '',
      availableQuantity: 0,
      minItems: 0,
      selectedQuantity: 0,
      totalPrice: 0.0,
    ),
  );
    if (product.price != previousProduct.price ) {
      print('lol >> Product ${product.title} has price changed.');
      changesDetected = true;
    }

    if ( product.minItems != previousProduct.minItems) {
      print('lol >> Product ${product.title} has not match minimum items.');
      changesDetected = true;
    }

    // Check if selectedQuantity is greater than or equal to availableQuantity
    if (product.selectedQuantity > product.availableQuantity) {
      print('lol >> Warning: Product selectedQuantity is greater than availableQuantity.');

      // Print new values
      print('lol >> Product available quantity: ${product.availableQuantity}');
      print('lol >> Product selected quantity: ${product.selectedQuantity}');

    }


  }

  if (changesDetected) {
    // If any changes are detected
    return true;
  } else {
    return false;
  }
}

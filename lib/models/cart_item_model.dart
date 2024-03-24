

import 'package:update_card_task/models/place_model.dart';
import 'package:update_card_task/models/product_model.dart';

class CartItem {
  int id;
  Place place;
  List<CartProduct> products;
  num totalPrice;
  CartItem(
      {required this.id,
      required this.place,
      required this.products,
      this.totalPrice = 0});
  num calculateTotalAmount() {
    totalPrice = 0;
    for (final product in products) {
      totalPrice += product.totalPrice;
    }
    totalPrice += place.shippingPrice!;
    return totalPrice;
  }
}

class CartProduct extends Product {
  int selectedQuantity;
  num totalPrice;
  CartProduct({
    super.id,
    super.title,
    super.description,
    super.image,
    super.price,
    super.minItems,
     required super.availableQuantity,
    this.selectedQuantity = 0,
    this.totalPrice = 0,
  });
  num? calculateProductTotalPrice() {
    totalPrice = (selectedQuantity * (price ?? 0));
    return totalPrice;
  }
}

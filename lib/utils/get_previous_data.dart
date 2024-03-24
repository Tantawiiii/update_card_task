

import '../models/cart_item_model.dart';
import '../models/place_model.dart';

CartItem getPreviousDataForItem(CartItem item) {
  return CartItem(
    id: item.id,
    place: Place(
      id: item.place.id,
      isActive: false, // Assuming place activity status changed
      title: item.place.title,
      placeImage: item.place.placeImage,
      shippingPrice: item.place.shippingPrice,
    ),
    products: item.products.map((product) {
      // Assuming all products have their prices increased
      return CartProduct(
        id: product.id,
        title: product.title,
        description: product.description,
        price: product.price,
        image: product.image,
        availableQuantity: product.availableQuantity,
        minItems: product.minItems,
        selectedQuantity: product.selectedQuantity,
        totalPrice: product.totalPrice,
      );
    }).toList(),
  );
}
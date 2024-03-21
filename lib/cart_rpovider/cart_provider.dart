

import '../dummy_data/local_data.dart';
import '../dummy_data/online_data.dart';
import '../models/cart_item_model.dart';
import '../models/product_model.dart';

class CartProvider {
  final List<CartItem> cartITems = List.from(localCartITems, growable: true);

  final onlinePlaces = placesList;

  final onlineProducts = productsList;

  num _total = 0;
  num get totalCartPrice {
    _total = 0;
    for (final item in cartITems) {
      _total += item.totalPrice;
    }
    return _total;
  }

  void updateCart(int productId, double newPrice) {
    //1- TODO: implement updateCart
    //2- print items after update
    // Update product price first
    updateProductPrice(productId, newPrice);
    //3- Display the changes, that were made on user cart, on home page.
   // _printItemsAfterUpdate(cartITems);
  }

  // Any changes in the Price
  void updateProductPrice(int productId, double newProductPrice) {
    // 1 - searches for a product in the productsList
    Product productToUpdate = productsList.firstWhere(
          (product) => product.id == productId,
      orElse: () => Product(id: -1), // Return a default Product object if not found
    );

    // 2- check if the product is available or not
    if (productToUpdate.id != -1 && productToUpdate.availableQuantity! > 0) {
      // Update the product's price
      productToUpdate.price = newProductPrice;

      // 3- Update the price in the cart items
      localCartITems.forEach((cartItem) {
        cartItem.products.forEach((cartProduct) {
          if (cartProduct.id == productId) {
            cartProduct.price = newProductPrice;
            cartProduct.totalPrice = newProductPrice * cartProduct.selectedQuantity;
          }
        });
      });

      print('Product price updated successfully for product ID: $productId');
     // 4- print items after update
      _printItemsAfterUpdate(localCartITems);
    } else {
      print('Product not found or not available.');
    }
  }

  _printItemsAfterUpdate(List<CartItem> localCartItems) {
    for (final item in localCartItems) {
      print('############ START of cartItem id: ${item.id} ##########');
      print('Place: ${item.place.title}');
      print('isActive: ${item.place.isActive}');
      print('Place image: ${item.place.placeImage}');
      print('Place shipping price: ${item.place.shippingPrice}');
      for (final product in item.products) {
        _printCartProduct(product);
      }
      print('CartItem total price: ${item.totalPrice}');
      print('############ END of cartItem id: ${item.id} ##########');
    }
    print("Total cart price: $totalCartPrice");
  }

  _printCartProduct(CartProduct product) {
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

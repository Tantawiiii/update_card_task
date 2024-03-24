

import '../models/cart_item_model.dart';
import '../models/place_model.dart';

final localCartITems = [
  // item number one
  CartItem(
      id: 1,
      place: Place(
        id: 1,
        isActive: false,
        title: 'El-Haram Mosque',
        placeImage: 'assets/images/mosque-1.jpg',
        shippingPrice: 30,
      ),
      products: [
        CartProduct(
          id: 1,
          title: 'Water Bottle',
          description: 'This is a water bottle',
          price: 10,
          image: 'assets/images/product-1.jpg',
          availableQuantity: 3,
          minItems: 5,
          selectedQuantity: 5,
          totalPrice: 50,
        ),
        CartProduct(
          id: 2,
          title: 'T-Shirt',
          description: 'This is a T-Shirt',
          price: 20,
          image: 'assets/images/product-2.jpg',
          availableQuantity: 20,
          minItems: 2,
          selectedQuantity: 2,
          totalPrice: 40,
        ),
      ]),
  // item number two
  CartItem(
      id: 2,
      place: Place(
        id: 2,
        isActive: true,
        title: 'El-Moez mosque',
        placeImage: 'assets/images/mosque-2.jpg',
        shippingPrice: 30,
      ),
      products: [
        CartProduct(
          id: 2,
          title: 'T-Shirt',
          description: 'This is a T-Shirt',
          price: 20,
          image: 'assets/images/product-2.jpg',
          availableQuantity: 20,
          minItems: 2,
          selectedQuantity: 8,
          totalPrice: 160,
        ),
        CartProduct(
          id: 3,
          title: 'Jeans',
          description: 'This is a Jeans',
          price: 30,
          image: 'assets/images/product-3.jpg',
          availableQuantity: 10,
          minItems: 1,
          selectedQuantity: 1,
          totalPrice: 30,
        ),
        CartProduct(
          id: 4,
          title: 'Shoes',
          description: 'This is a Shoes',
          price: 40,
          image: 'assets/images/product-4.jpg',
          availableQuantity: 5,
          minItems: 1,
          selectedQuantity: 5,
          totalPrice: 200,
        ),
      ]),
  // item number three
  CartItem(
      id: 3,
      place: Place(
        id: 3,
        isActive: false,
        title: 'El-Sultan Hassan Mosque',
        placeImage: 'assets/images/mosque-3.jpg',
        shippingPrice: 40,
      ),
      products: [
        CartProduct(
          id: 1,
          title: 'Water Bottle',
          description: 'This is a water bottle',
          price: 50,
          image: 'assets/images/product-1.jpg',
          availableQuantity: 30,
          minItems: 5,
          selectedQuantity: 5,
          totalPrice: 50,
        ),
        CartProduct(
          id: 3,
          title: 'Jeans',
          description: 'This is a Jeans',
          price: 30,
          image: 'assets/images/product-3.jpg',
          availableQuantity: 10,
          minItems: 1,
          selectedQuantity: 9,
          totalPrice: 270,
        ),
        CartProduct(
          id: 4,
          title: 'Shoes',
          description: 'This is a Shoes',
          price: 40,
          image: 'assets/images/product-4.jpg',
          availableQuantity: 5,
          minItems: 1,
          selectedQuantity: 3,
          totalPrice: 120,
        ),
      ]),
];

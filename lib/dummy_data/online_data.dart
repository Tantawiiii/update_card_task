

import '../models/place_model.dart';
import '../models/product_model.dart';

final placesList = [
  Place(
    id: 1,
    isActive: true,
    title: 'El-Haram Mosque',
    placeImage: 'assets/images/mosque-1.jpg',
    shippingPrice: 20,
  ),
  Place(
    id: 2,
    isActive: true,
    title: 'El-Moez mosque',
    placeImage: 'assets/images/mosque-2.jpg',
    shippingPrice: 30,
  ),
  Place(
    id: 3,
    isActive: true,
    title: 'El-Sultan Hassan Mosque',
    placeImage: 'assets/images/mosque-3.jpg',
    shippingPrice: 40,
  ),
  Place(
    id: 4,
    isActive: true,
    title: 'El-Rifaie Mosque',
    placeImage: 'assets/images/mosque-4.jpg',
    shippingPrice: 50,
  ),
];

final productsList = [
  Product(
    id: 1,
    title: 'Water Bottle',
    description: 'This is a water bottle',
    price: 10,
    image: 'assets/images/product-1.jpg',
    availableQuantity: 30,
    minItems: 5,
  ),
  Product(
    id: 2,
    title: 'T-Shirt',
    description: 'This is a T-Shirt',
    price: 20,
    image: 'assets/images/product-2.jpg',
    availableQuantity: 20,
    minItems: 2,
  ),
  Product(
    id: 3,
    title: 'Jeans',
    description: 'This is a Jeans',
    price: 30,
    image: 'assets/images/product-3.jpg',
    availableQuantity: 10,
    minItems: 1,
  ),
  Product(
    id: 4,
    title: 'Shoes',
    description: 'This is a Shoes',
    price: 40,
    image: 'assets/images/product-4.jpg',
    availableQuantity: 5,
    minItems: 1,
  ),
];

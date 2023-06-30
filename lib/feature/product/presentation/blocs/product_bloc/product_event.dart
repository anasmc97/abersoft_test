import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadProducts() = LoadProducts;
  const factory ProductEvent.imagePressed() = ImagePressed;
  const factory ProductEvent.createProduct(
          String productName, String productdescription, String productImage) =
      CreateProduct;
}

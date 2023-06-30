import 'dart:io';

import 'package:abersoft_test/feature/product/domain/entities/product_entity.dart';
import 'package:abersoft_test/feature/product/domain/entities/products_entity.dart';
import 'package:dio/dio.dart';

abstract class ProductRepository {
  Future<Products> loadProducts();
  Future<Response> createProduct(
      String productName, String productDescription, String productImage);
}

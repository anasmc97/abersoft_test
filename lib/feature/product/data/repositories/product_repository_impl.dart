import 'dart:io';

import 'package:abersoft_test/feature/product/data/datasources/remote/product_remote_data_source.dart';
import 'package:abersoft_test/feature/product/data/models/product_model.dart';
import 'package:abersoft_test/feature/product/data/models/products_response.dart';
import 'package:abersoft_test/feature/product/domain/entities/product_entity.dart';
import 'package:abersoft_test/feature/product/domain/entities/products_entity.dart';
import 'package:abersoft_test/feature/product/domain/repositories/product_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;
  ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Products> loadProducts() {
    return remoteDataSource.loadProducts().then(
          (value) => value.toDomain(),
        );
  }

  @override
  Future<Response> createProduct(
      String productName, String productDescription, String productImage) {
    return remoteDataSource
        .createProduct(productName, productDescription, productImage)
        .then((value) => value);
  }
}

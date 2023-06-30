import 'dart:io';

import 'package:abersoft_test/core/storages/local_storages.dart';
import 'package:abersoft_test/feature/product/data/models/products_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:abersoft_test/feature/product/data/models/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:abersoft_test/core/utils/constants.dart';

abstract class ProductRemoteDataSource {
  Future<ProductsResponse> loadProducts();
  Future<Response> createProduct(
      String productName, String productDescription, String productImage);
}

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  ProductRemoteDataSourceImpl(this._storage);
  final LocalStorage _storage;
  @override
  Future<ProductsResponse> loadProducts() async {
    const api = ConstantUrl.url + 'products';
    final dio = Dio();

    String? token = await _storage.getAuthToken() ?? '';

    dio.options.headers['Authorization'] = 'Bearer $token';
    Response response;
    try {
      response = await dio.get(api);
      if (response.statusCode == 200) {
        ProductsResponse productsResponse =
            ProductsResponse.fromJson(response.data);
        return productsResponse;
      } else {
        return ProductsResponse(bestProduct: [], allProduct: []);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  @override
  Future<Response> createProduct(String productName, String productDescription,
      String productImage) async {
    const api = ConstantUrl.url + 'products';
    final dio = Dio();

    String? token = await _storage.getAuthToken() ?? '';

    dio.options.headers['Authorization'] = 'Bearer $token';
    final data = {
      "productName": productName,
      "productImage:": productImage,
      "productDecription": productDescription,
    };
    Response response;
    try {
      response = await dio.post(api, data: data);
      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}

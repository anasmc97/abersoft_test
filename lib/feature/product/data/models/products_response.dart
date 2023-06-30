import 'package:abersoft_test/feature/product/data/models/product_model.dart';
import 'package:abersoft_test/feature/product/domain/entities/products_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_response.freezed.dart';
part 'products_response.g.dart';

@freezed
class ProductsResponse with _$ProductsResponse {
  factory ProductsResponse(
      {required List<ProductModel> bestProduct,
      required List<ProductModel> allProduct}) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}

extension ProductsResponseX on ProductsResponse {
  Products toDomain() => Products(
        bestProduct: bestProduct.map((e) => e.toDomain()).toList(),
        allProduct: allProduct.map((e) => e.toDomain()).toList(),
      );
}

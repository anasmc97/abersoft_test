import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String imageUrl,
    required String productDescription,
  }) = _Product;
}

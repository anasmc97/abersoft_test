import 'package:abersoft_test/feature/product/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_entity.freezed.dart';

@freezed
class Products with _$Products {
  const factory Products(
      {required List<Product> bestProduct,
      required List<Product> allProduct}) = _Products;
}

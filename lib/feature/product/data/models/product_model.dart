import 'package:abersoft_test/feature/product/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel(
      {required int id,
      required String name,
      required String imageUrl,
      required String productDescription}) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromDomain(Product form) => ProductModel(
      id: form.id,
      name: form.name,
      imageUrl: form.imageUrl,
      productDescription: form.productDescription);
}

extension ProductModelX on ProductModel {
  Product toDomain() => Product(
      id: id,
      name: name,
      imageUrl: imageUrl,
      productDescription: productDescription);
}

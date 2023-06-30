import 'package:abersoft_test/feature/product/domain/entities/products_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:abersoft_test/core/domain/failures/failure.codegen.dart';
import 'package:abersoft_test/feature/product/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'product_state.freezed.dart';

enum Status { initial, loading, success, error }

@freezed
abstract class ProductState implements _$ProductState {
  const factory ProductState({
    required Products products,
    required Option<Either<Failure, Products>> productsOrFailureOption,
    required Status status,
    required XFile? image,
    required Option<Either<Failure, String>> createProductOrFailureOption,
  }) = _ProductState;

  factory ProductState.initial() {
    return ProductState(
      products: const Products(bestProduct: [], allProduct: []),
      status: Status.initial,
      productsOrFailureOption: none(),
      image: null,
      createProductOrFailureOption: none(),
    );
  }
}

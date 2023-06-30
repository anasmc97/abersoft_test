import 'dart:developer';
import 'dart:io';

import 'package:abersoft_test/feature/product/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:abersoft_test/core/domain/failures/failure.codegen.dart';
import 'package:abersoft_test/core/domain/usecases/use_case.dart';
import 'package:abersoft_test/feature/login/domain/entities/auth_entity.dart';
import 'package:abersoft_test/feature/login/domain/repositories/auth_repository.dart';

@lazySingleton
class CreateProductUsecase implements UseCase<String?, ParamsCreateProduct> {
  final ProductRepository repository;

  CreateProductUsecase(this.repository);

  @override
  Future<Either<Failure, String?>> call(ParamsCreateProduct params) async {
    try {
      final response = await repository.createProduct(
          params.productName, params.productDescription, params.productImage);
      if (response.statusCode == 406) {
        return left(
          Failure.serverFailure(
            message: response.data['message'],
          ),
        );
      } else if (response.statusCode == 403) {
        return left(
          Failure.serverFailure(
            message: response.data['message'],
          ),
        );
      }
      return right(response.data['name']);
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return left(const Failure.serverFailure(
          message: 'cant create product because of some problem'));
    }
  }
}

class ParamsCreateProduct extends Equatable {
  final String productName;
  final String productDescription;
  final String productImage;

  const ParamsCreateProduct(
      {required this.productName,
      required this.productDescription,
      required this.productImage});

  @override
  List<Object?> get props => [productName, productDescription, productImage];
}

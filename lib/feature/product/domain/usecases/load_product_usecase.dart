import 'dart:developer';

import 'package:abersoft_test/feature/product/domain/entities/products_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:abersoft_test/feature/product/domain/entities/product_entity.dart';
import 'package:abersoft_test/feature/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:abersoft_test/core/domain/failures/failure.codegen.dart';
import 'package:abersoft_test/core/domain/usecases/use_case.dart';

@lazySingleton
class LoadProductUsecase implements UseCase<Products, NoParams> {
  final ProductRepository repository;

  LoadProductUsecase(this.repository);

  @override
  Future<Either<Failure, Products>> call(NoParams params) async {
    try {
      final response = await repository.loadProducts();
      return right(response);
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return left(
          const Failure.serverFailure(message: 'Cant get data from db'));
    }
  }
}

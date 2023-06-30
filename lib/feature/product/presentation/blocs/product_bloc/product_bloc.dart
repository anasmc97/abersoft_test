import 'dart:async';

import 'package:abersoft_test/feature/product/domain/usecases/create_product_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:abersoft_test/core/domain/usecases/use_case.dart';
import 'package:abersoft_test/core/extensions/dartz_extensions.dart';
import 'package:abersoft_test/feature/product/domain/usecases/load_product_usecase.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_event.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(this._loadProduct, this._createProductUsecase)
      : super(ProductState.initial()) {
    on<LoadProducts>(_onLoadProducts);
    on<ImagePressed>(_onImagePressed);
    on<CreateProduct>(_onCreateProduct);
  }

  final LoadProductUsecase _loadProduct;
  final CreateProductUsecase _createProductUsecase;

  FutureOr<void> _onLoadProducts(
    LoadProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _loadProduct(NoParams());
    if (result.isLeft()) {
      emit(
        state.copyWith(
            productsOrFailureOption: optionOf(
              left(result.getLeft()!),
            ),
            status: Status.initial),
      );
    }
    if (result.isRight()) {
      emit(
        state.copyWith(
          productsOrFailureOption: optionOf(
            right(result.getRight()!),
          ),
        ),
      );
      emit(
        state.copyWith(
          productsOrFailureOption: none(),
          products: result.getRight()!,
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }

  FutureOr<void> _onImagePressed(
    ImagePressed event,
    Emitter<ProductState> emit,
  ) async {
    ImagePicker imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    emit(
      state.copyWith(
        image: image,
      ),
    );
  }

  FutureOr<void> _onCreateProduct(
    CreateProduct event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _createProductUsecase.call(
      ParamsCreateProduct(
          productName: event.productName,
          productDescription: event.productdescription,
          productImage: event.productImage),
    );
    if (result.isLeft()) {
      emit(
        state.copyWith(
            createProductOrFailureOption: optionOf(
              left(result.getLeft()!),
            ),
            status: Status.error),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
    if (result.isRight()) {
      emit(
        state.copyWith(
          createProductOrFailureOption: optionOf(
            right(result.getRight()!),
          ),
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial, image: null),
      );
    }
  }
}

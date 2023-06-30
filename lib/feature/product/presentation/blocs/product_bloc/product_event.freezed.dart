// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() imagePressed,
    required TResult Function(
            String productName, String productdescription, String productImage)
        createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? imagePressed,
    TResult? Function(
            String productName, String productdescription, String productImage)?
        createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? imagePressed,
    TResult Function(
            String productName, String productdescription, String productImage)?
        createProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(ImagePressed value) imagePressed,
    required TResult Function(CreateProduct value) createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(ImagePressed value)? imagePressed,
    TResult? Function(CreateProduct value)? createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(ImagePressed value)? imagePressed,
    TResult Function(CreateProduct value)? createProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadProductsCopyWith<$Res> {
  factory _$$LoadProductsCopyWith(
          _$LoadProducts value, $Res Function(_$LoadProducts) then) =
      __$$LoadProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadProducts>
    implements _$$LoadProductsCopyWith<$Res> {
  __$$LoadProductsCopyWithImpl(
      _$LoadProducts _value, $Res Function(_$LoadProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadProducts implements LoadProducts {
  const _$LoadProducts();

  @override
  String toString() {
    return 'ProductEvent.loadProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() imagePressed,
    required TResult Function(
            String productName, String productdescription, String productImage)
        createProduct,
  }) {
    return loadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? imagePressed,
    TResult? Function(
            String productName, String productdescription, String productImage)?
        createProduct,
  }) {
    return loadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? imagePressed,
    TResult Function(
            String productName, String productdescription, String productImage)?
        createProduct,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(ImagePressed value) imagePressed,
    required TResult Function(CreateProduct value) createProduct,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(ImagePressed value)? imagePressed,
    TResult? Function(CreateProduct value)? createProduct,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(ImagePressed value)? imagePressed,
    TResult Function(CreateProduct value)? createProduct,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class LoadProducts implements ProductEvent {
  const factory LoadProducts() = _$LoadProducts;
}

/// @nodoc
abstract class _$$ImagePressedCopyWith<$Res> {
  factory _$$ImagePressedCopyWith(
          _$ImagePressed value, $Res Function(_$ImagePressed) then) =
      __$$ImagePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImagePressedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ImagePressed>
    implements _$$ImagePressedCopyWith<$Res> {
  __$$ImagePressedCopyWithImpl(
      _$ImagePressed _value, $Res Function(_$ImagePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImagePressed implements ImagePressed {
  const _$ImagePressed();

  @override
  String toString() {
    return 'ProductEvent.imagePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImagePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() imagePressed,
    required TResult Function(
            String productName, String productdescription, String productImage)
        createProduct,
  }) {
    return imagePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? imagePressed,
    TResult? Function(
            String productName, String productdescription, String productImage)?
        createProduct,
  }) {
    return imagePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? imagePressed,
    TResult Function(
            String productName, String productdescription, String productImage)?
        createProduct,
    required TResult orElse(),
  }) {
    if (imagePressed != null) {
      return imagePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(ImagePressed value) imagePressed,
    required TResult Function(CreateProduct value) createProduct,
  }) {
    return imagePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(ImagePressed value)? imagePressed,
    TResult? Function(CreateProduct value)? createProduct,
  }) {
    return imagePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(ImagePressed value)? imagePressed,
    TResult Function(CreateProduct value)? createProduct,
    required TResult orElse(),
  }) {
    if (imagePressed != null) {
      return imagePressed(this);
    }
    return orElse();
  }
}

abstract class ImagePressed implements ProductEvent {
  const factory ImagePressed() = _$ImagePressed;
}

/// @nodoc
abstract class _$$CreateProductCopyWith<$Res> {
  factory _$$CreateProductCopyWith(
          _$CreateProduct value, $Res Function(_$CreateProduct) then) =
      __$$CreateProductCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String productName, String productdescription, String productImage});
}

/// @nodoc
class __$$CreateProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$CreateProduct>
    implements _$$CreateProductCopyWith<$Res> {
  __$$CreateProductCopyWithImpl(
      _$CreateProduct _value, $Res Function(_$CreateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productdescription = null,
    Object? productImage = null,
  }) {
    return _then(_$CreateProduct(
      null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      null == productdescription
          ? _value.productdescription
          : productdescription // ignore: cast_nullable_to_non_nullable
              as String,
      null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateProduct implements CreateProduct {
  const _$CreateProduct(
      this.productName, this.productdescription, this.productImage);

  @override
  final String productName;
  @override
  final String productdescription;
  @override
  final String productImage;

  @override
  String toString() {
    return 'ProductEvent.createProduct(productName: $productName, productdescription: $productdescription, productImage: $productImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProduct &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productdescription, productdescription) ||
                other.productdescription == productdescription) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productName, productdescription, productImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductCopyWith<_$CreateProduct> get copyWith =>
      __$$CreateProductCopyWithImpl<_$CreateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() imagePressed,
    required TResult Function(
            String productName, String productdescription, String productImage)
        createProduct,
  }) {
    return createProduct(productName, productdescription, productImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? imagePressed,
    TResult? Function(
            String productName, String productdescription, String productImage)?
        createProduct,
  }) {
    return createProduct?.call(productName, productdescription, productImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? imagePressed,
    TResult Function(
            String productName, String productdescription, String productImage)?
        createProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(productName, productdescription, productImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(ImagePressed value) imagePressed,
    required TResult Function(CreateProduct value) createProduct,
  }) {
    return createProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(ImagePressed value)? imagePressed,
    TResult? Function(CreateProduct value)? createProduct,
  }) {
    return createProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(ImagePressed value)? imagePressed,
    TResult Function(CreateProduct value)? createProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(this);
    }
    return orElse();
  }
}

abstract class CreateProduct implements ProductEvent {
  const factory CreateProduct(
      final String productName,
      final String productdescription,
      final String productImage) = _$CreateProduct;

  String get productName;
  String get productdescription;
  String get productImage;
  @JsonKey(ignore: true)
  _$$CreateProductCopyWith<_$CreateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

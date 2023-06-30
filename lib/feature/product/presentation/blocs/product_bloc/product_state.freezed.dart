// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  Products get products => throw _privateConstructorUsedError;
  Option<Either<Failure, Products>> get productsOrFailureOption =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get createProductOrFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {Products products,
      Option<Either<Failure, Products>> productsOrFailureOption,
      Status status,
      XFile? image,
      Option<Either<Failure, String>> createProductOrFailureOption});

  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productsOrFailureOption = null,
    Object? status = null,
    Object? image = freezed,
    Object? createProductOrFailureOption = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
      productsOrFailureOption: null == productsOrFailureOption
          ? _value.productsOrFailureOption
          : productsOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Products>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      createProductOrFailureOption: null == createProductOrFailureOption
          ? _value.createProductOrFailureOption
          : createProductOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res> get products {
    return $ProductsCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Products products,
      Option<Either<Failure, Products>> productsOrFailureOption,
      Status status,
      XFile? image,
      Option<Either<Failure, String>> createProductOrFailureOption});

  @override
  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productsOrFailureOption = null,
    Object? status = null,
    Object? image = freezed,
    Object? createProductOrFailureOption = null,
  }) {
    return _then(_$_ProductState(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
      productsOrFailureOption: null == productsOrFailureOption
          ? _value.productsOrFailureOption
          : productsOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Products>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      createProductOrFailureOption: null == createProductOrFailureOption
          ? _value.createProductOrFailureOption
          : createProductOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.products,
      required this.productsOrFailureOption,
      required this.status,
      required this.image,
      required this.createProductOrFailureOption});

  @override
  final Products products;
  @override
  final Option<Either<Failure, Products>> productsOrFailureOption;
  @override
  final Status status;
  @override
  final XFile? image;
  @override
  final Option<Either<Failure, String>> createProductOrFailureOption;

  @override
  String toString() {
    return 'ProductState(products: $products, productsOrFailureOption: $productsOrFailureOption, status: $status, image: $image, createProductOrFailureOption: $createProductOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(
                    other.productsOrFailureOption, productsOrFailureOption) ||
                other.productsOrFailureOption == productsOrFailureOption) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createProductOrFailureOption,
                    createProductOrFailureOption) ||
                other.createProductOrFailureOption ==
                    createProductOrFailureOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products,
      productsOrFailureOption, status, image, createProductOrFailureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final Products products,
      required final Option<Either<Failure, Products>> productsOrFailureOption,
      required final Status status,
      required final XFile? image,
      required final Option<Either<Failure, String>>
          createProductOrFailureOption}) = _$_ProductState;

  @override
  Products get products;
  @override
  Option<Either<Failure, Products>> get productsOrFailureOption;
  @override
  Status get status;
  @override
  XFile? get image;
  @override
  Option<Either<Failure, String>> get createProductOrFailureOption;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

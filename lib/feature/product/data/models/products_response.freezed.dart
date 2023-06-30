// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) {
  return _ProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductsResponse {
  List<ProductModel> get bestProduct => throw _privateConstructorUsedError;
  List<ProductModel> get allProduct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsResponseCopyWith<ProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
          ProductsResponse value, $Res Function(ProductsResponse) then) =
      _$ProductsResponseCopyWithImpl<$Res, ProductsResponse>;
  @useResult
  $Res call({List<ProductModel> bestProduct, List<ProductModel> allProduct});
}

/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res, $Val extends ProductsResponse>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestProduct = null,
    Object? allProduct = null,
  }) {
    return _then(_value.copyWith(
      bestProduct: null == bestProduct
          ? _value.bestProduct
          : bestProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      allProduct: null == allProduct
          ? _value.allProduct
          : allProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsResponseCopyWith<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  factory _$$_ProductsResponseCopyWith(
          _$_ProductsResponse value, $Res Function(_$_ProductsResponse) then) =
      __$$_ProductsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> bestProduct, List<ProductModel> allProduct});
}

/// @nodoc
class __$$_ProductsResponseCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res, _$_ProductsResponse>
    implements _$$_ProductsResponseCopyWith<$Res> {
  __$$_ProductsResponseCopyWithImpl(
      _$_ProductsResponse _value, $Res Function(_$_ProductsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestProduct = null,
    Object? allProduct = null,
  }) {
    return _then(_$_ProductsResponse(
      bestProduct: null == bestProduct
          ? _value._bestProduct
          : bestProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      allProduct: null == allProduct
          ? _value._allProduct
          : allProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsResponse implements _ProductsResponse {
  _$_ProductsResponse(
      {required final List<ProductModel> bestProduct,
      required final List<ProductModel> allProduct})
      : _bestProduct = bestProduct,
        _allProduct = allProduct;

  factory _$_ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsResponseFromJson(json);

  final List<ProductModel> _bestProduct;
  @override
  List<ProductModel> get bestProduct {
    if (_bestProduct is EqualUnmodifiableListView) return _bestProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestProduct);
  }

  final List<ProductModel> _allProduct;
  @override
  List<ProductModel> get allProduct {
    if (_allProduct is EqualUnmodifiableListView) return _allProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProduct);
  }

  @override
  String toString() {
    return 'ProductsResponse(bestProduct: $bestProduct, allProduct: $allProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsResponse &&
            const DeepCollectionEquality()
                .equals(other._bestProduct, _bestProduct) &&
            const DeepCollectionEquality()
                .equals(other._allProduct, _allProduct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bestProduct),
      const DeepCollectionEquality().hash(_allProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsResponseCopyWith<_$_ProductsResponse> get copyWith =>
      __$$_ProductsResponseCopyWithImpl<_$_ProductsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsResponseToJson(
      this,
    );
  }
}

abstract class _ProductsResponse implements ProductsResponse {
  factory _ProductsResponse(
      {required final List<ProductModel> bestProduct,
      required final List<ProductModel> allProduct}) = _$_ProductsResponse;

  factory _ProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductsResponse.fromJson;

  @override
  List<ProductModel> get bestProduct;
  @override
  List<ProductModel> get allProduct;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsResponseCopyWith<_$_ProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

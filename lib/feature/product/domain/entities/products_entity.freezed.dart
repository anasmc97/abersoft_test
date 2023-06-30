// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Products {
  List<Product> get bestProduct => throw _privateConstructorUsedError;
  List<Product> get allProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call({List<Product> bestProduct, List<Product> allProduct});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

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
              as List<Product>,
      allProduct: null == allProduct
          ? _value.allProduct
          : allProduct // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$$_ProductsCopyWith(
          _$_Products value, $Res Function(_$_Products) then) =
      __$$_ProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> bestProduct, List<Product> allProduct});
}

/// @nodoc
class __$$_ProductsCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$_Products>
    implements _$$_ProductsCopyWith<$Res> {
  __$$_ProductsCopyWithImpl(
      _$_Products _value, $Res Function(_$_Products) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestProduct = null,
    Object? allProduct = null,
  }) {
    return _then(_$_Products(
      bestProduct: null == bestProduct
          ? _value._bestProduct
          : bestProduct // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      allProduct: null == allProduct
          ? _value._allProduct
          : allProduct // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_Products implements _Products {
  const _$_Products(
      {required final List<Product> bestProduct,
      required final List<Product> allProduct})
      : _bestProduct = bestProduct,
        _allProduct = allProduct;

  final List<Product> _bestProduct;
  @override
  List<Product> get bestProduct {
    if (_bestProduct is EqualUnmodifiableListView) return _bestProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestProduct);
  }

  final List<Product> _allProduct;
  @override
  List<Product> get allProduct {
    if (_allProduct is EqualUnmodifiableListView) return _allProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProduct);
  }

  @override
  String toString() {
    return 'Products(bestProduct: $bestProduct, allProduct: $allProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Products &&
            const DeepCollectionEquality()
                .equals(other._bestProduct, _bestProduct) &&
            const DeepCollectionEquality()
                .equals(other._allProduct, _allProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bestProduct),
      const DeepCollectionEquality().hash(_allProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      __$$_ProductsCopyWithImpl<_$_Products>(this, _$identity);
}

abstract class _Products implements Products {
  const factory _Products(
      {required final List<Product> bestProduct,
      required final List<Product> allProduct}) = _$_Products;

  @override
  List<Product> get bestProduct;
  @override
  List<Product> get allProduct;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      throw _privateConstructorUsedError;
}

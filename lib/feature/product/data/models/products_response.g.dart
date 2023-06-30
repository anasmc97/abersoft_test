// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsResponse _$$_ProductsResponseFromJson(Map<String, dynamic> json) =>
    _$_ProductsResponse(
      bestProduct: (json['bestProduct'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      allProduct: (json['allProduct'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductsResponseToJson(_$_ProductsResponse instance) =>
    <String, dynamic>{
      'bestProduct': instance.bestProduct,
      'allProduct': instance.allProduct,
    };

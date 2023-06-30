import 'package:flutter/material.dart';
import 'package:abersoft_test/feature/product/domain/entities/product_entity.dart';

class ProductItemWidget extends StatelessWidget {
  Product product;
  ProductItemWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 145,
          height: 96,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          product.name,
          style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ],
    );
  }
}

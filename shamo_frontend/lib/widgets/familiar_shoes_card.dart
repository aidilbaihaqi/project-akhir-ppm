import 'package:flutter/material.dart';

import 'package:shamo_frontend/models/product_model.dart';
import 'package:shamo_frontend/screens/product_detail/detail.dart';
class FamiliarShoesCard extends StatelessWidget {
  const FamiliarShoesCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProductPage(product: product),
          ),
        );
      },
      child: Container(
        width: 54.0,
        height: 54.0,
        margin: const EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(product.galleries![0].url),
          ),
          borderRadius: BorderRadius.circular(
            6.0,
          ),
        ),
      ),
    );
  }
}

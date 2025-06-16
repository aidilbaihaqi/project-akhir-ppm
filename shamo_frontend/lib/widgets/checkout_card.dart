import 'package:flutter/material.dart';

import 'package:shamo_frontend/models/cart_model.dart';

import 'package:shamo_frontend/theme.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    super.key,
    required this.cart,
  });

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: NetworkImage(cart.product.galleries![0].url),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.product.name!,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14.0,
                    fontWeight: semibold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  '\$ ${cart.product.price}',
                  style: priceTextStyle.copyWith(
                    fontSize: 14.0,
                    fontWeight: regular,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            '${cart.quantity} Items',
            style: secondaryTextStyle.copyWith(
              fontSize: 12.0,
              fontWeight: regular,
            ),
          )
        ],
      ),
    );
  }
}

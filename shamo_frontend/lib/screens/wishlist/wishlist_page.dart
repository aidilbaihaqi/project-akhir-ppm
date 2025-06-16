import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_frontend/providers/wishlist_provider.dart';

import 'package:shamo_frontend/theme.dart';
import 'package:shamo_frontend/widgets/wishlist_card.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of<WishListProvider>(context);
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          color: bgColor3,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: wishListProvider.wishlist
                .map((product) => WishlistCard(
                      product: product,
                    ))
                .toList(),
          ),
        ),
      );
    }

    // ignore: unused_element
    Widget emptyChat() {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.only(bottom: 70.0),
          color: bgColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                ' You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Let\'s find your favorite shoes',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14.0,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 44.0,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 10.0,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14.0,
                      fontWeight: regular,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // ignore: prefer_is_empty
        wishListProvider.wishlist.length == 0 ? emptyChat() : content(),
      ],
    );
  }
}

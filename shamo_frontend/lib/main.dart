import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_frontend/providers/auth_provider.dart';
import 'package:shamo_frontend/providers/cart_provider.dart';
import 'package:shamo_frontend/providers/product_provider.dart';
import 'package:shamo_frontend/providers/transaction_provider.dart';
import 'package:shamo_frontend/providers/wishlist_provider.dart';

import 'package:shamo_frontend/screens/user_auth/splash_page.dart';
import 'package:shamo_frontend/screens/user_auth/sign_in_page.dart';
import 'package:shamo_frontend/screens/user_auth/sign_up_page.dart';
import 'package:shamo_frontend/screens/mainpage/main_page.dart';
import 'package:shamo_frontend/screens/profile/edit_profile_page.dart';
import 'package:shamo_frontend/screens/cart/cart_page.dart';
import 'package:shamo_frontend/screens/checkout_page/checkout_page.dart';
import 'package:shamo_frontend/screens/checkout_page/checkout_success_page.dart';
import 'package:shamo_frontend/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (content) => WishListProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => TransactionProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: primaryColor,
            selectionColor: primaryColor.withAlpha((255 * 0.3).toInt()),
            selectionHandleColor: primaryColor,
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/home': (context) => const MainPage(),
          '/edit-profile': (context) => const EditProfilePage(),
          '/cart': (context) => const CartPage(),
          '/checkout': (context) => const CheckOutPage(),
          '/checkout-success': (context) => const CheckOutSuccessPage(),
        },
      ),
    );
  }
}

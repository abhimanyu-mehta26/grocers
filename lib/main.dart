import 'package:flutter/material.dart';
import 'package:groceryapp/model/cart_model.dart';
import 'package:groceryapp/pages/cart_page.dart';
import 'package:groceryapp/pages/checkout.dart';
import 'package:groceryapp/pages/home_page.dart';
import 'package:groceryapp/pages/profile.dart';
import 'package:groceryapp/pages/store.dart';
import 'package:groceryapp/pages/update_profile.dart';
import 'package:provider/provider.dart';
import 'pages/intro_screen.dart';
import 'login.dart';
import 'registration.dart';
import 'otp.dart';
import 'pages/profile.dart';

void main() {
  // runApp( MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: MyLogin(),
  //   routes: {
  //     'login' : (context) => MyLogin(),
  //     'register' : (context) => MyRegister(),
  //     'otp' : (context ) => Otp(),
      // 'home' : (context) => HomePage(),
      // 'cart' : (context) => CartPage(),
  //   },
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyLogin(),
        routes: {
          'login' : (context) => MyLogin(),
          'register' : (context) => MyRegister(),
          'otp' : (context ) => Otp(),
          'home' : (context) => HomePage(),
          'cart' : (context) => CartPage(),
          'profile': (context) => profile_page(),
          'update': (context) => update_profile(),
          'checkout': (context) => Checkout(),
          'store' : (context) => Store()
        },
      ),
    );
  }
}

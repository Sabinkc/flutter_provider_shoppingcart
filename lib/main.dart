import 'package:flutter/material.dart';
import 'package:provider_shoppingcart/providers/cart_provider.dart';
import 'package:provider_shoppingcart/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

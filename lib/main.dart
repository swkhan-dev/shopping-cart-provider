import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/cart_provider.dart';
import 'package:provider_2/screen/catalog_screen.dart';

void main() {
  runApp(const ShoppingCartApp());
}

class ShoppingCartApp extends StatelessWidget {
  const ShoppingCartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: CatalogScreen()),
    );
  }
}

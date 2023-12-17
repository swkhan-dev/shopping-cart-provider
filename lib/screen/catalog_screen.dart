import 'package:flutter/material.dart';
import 'package:provider_2/constants.dart';
import 'package:provider_2/screen/cart_screen.dart';
import 'package:provider_2/screen/items_list.dart';
import 'package:provider_2/screen/widget.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text("Catalog"),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    )),
                child: const Icon(Icons.shopping_cart)),
            const SizedBox(
              width: 15,
            )
          ],
        ),
        body: ListView.builder(
          itemCount: catalog.length,
          itemBuilder: (context, index) => ItemWidget(
            item: catalog[index],
          ),
        ));
  }
}

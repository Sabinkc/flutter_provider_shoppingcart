import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_shoppingcart/providers/cart_provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartProvider>(
        builder: ((context, value, child) => ListView.builder(
              itemCount: value.proproductList.length,
              itemBuilder: ((context, index) => ListTile(
                    title: Text(value.proproductList[index]),
                  )),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CartProvider>(context, listen: false).addProduct();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

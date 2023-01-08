import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_class/components/product-model.dart';

class Cart extends StatefulWidget {
  List<Map> cart;
  Cart({super.key, required this.cart});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, inde) {
          return ListTile(
            title: Text("${cart[inde]['name']}"),
            subtitle: Text("${cart[inde]['price']}"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                cart.remove(products[inde]);
                (cart);  
                });
              },
            ),
          );
        },
      ),
    );
  }
}

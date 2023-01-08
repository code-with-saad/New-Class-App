import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_class/components/product-model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mart"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${products[index]['name']}"),
            subtitle: Text("${products[index]['price']}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      if (products[index]["isfavourite"] == false) {
                        favourite.add(products[index]);
                        setState(() {
                          products[index]["isfavourite"] = true;
                        });
                      } else {
                        favourite.remove(products[index]);
                        setState(() {
                          products[index]["isfavourite"] = false;
                        });
                      }
                    },
                    icon: Icon(Icons.favorite, color: products[index]["isfavourite"] == true ? Colors.red :Colors.grey 
                    ,)),
                IconButton(
                    onPressed: () {
                      if (products[index]["isfavourite"] == false) {
                        cart.add(products[index]);
                        setState(() {
                          products[index]["isfavourite"] = true;
                        });
                      } else {
                        cart.remove(products[index]);
                        setState(() {
                          products[index]["isfavourite"] = false;
                        });
                      }
                    },
                    icon: Icon(Icons.shopping_bag_outlined, color: products[index]["isfavourite"] == true ? Colors.red :Colors.grey)),
              ],
            ),
          );
        },
      ),
    );
  }
}

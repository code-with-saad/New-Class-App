import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_class/components/product-model.dart';

class Favourite extends StatefulWidget {
  List<Map> favourite;
  Favourite({super.key, required this.favourite});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Favourite"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: favourite.length,
        itemBuilder: (context, ind) {
          return ListTile(
            title: Text("${favourite[ind]['name']}"),
            subtitle: Text("${favourite[ind]['price']}"),
          );
        },
      ),
    );
  }
}

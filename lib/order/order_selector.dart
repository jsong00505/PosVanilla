import 'package:flutter/material.dart';

class OrderSelector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderSelectorState();
}

class _OrderSelectorState extends State<OrderSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: _buildGrid());
  }

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(5),
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: _buildGridTileList(50));

  List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Container(
          child: Image.network(
              'https://raw.githubusercontent.com/coska/2018.RestaurantPOS_Server/master/src/main/webapp/products//200x200/Appetizer_images.001.png')));
// Image.asset('images/pic$i.jpg')
}

import 'package:flutter/material.dart';
import 'package:pos_vanilla/style/order_button.dart';

class OrderSelector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderSelectorState();
}

class _OrderSelectorState extends State<OrderSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _categorySelectorView(),
        _itemSelectorView(),
      ],
    );
  }

  Widget _categorySelectorView() => Expanded(
        child: Row(
          children: [
            Expanded(
              child: _button('Main'),
              flex: 1,
            ),
            Expanded(
              child: _button('Appetizers & Side'),
              flex: 1,
            ),
            Expanded(
              child: _button('Drinks'),
              flex: 1,
            ),
          ],
        ),
        flex: 1,
      );

  Widget _itemSelectorView() => Expanded(
        child: Container(
          child: _buildGrid(),
        ),
        flex: 3,
      );

  Widget _button(var text) => TextButton(
        style: OrderButtonStyle.regularButtonStyle,
        onPressed: () {},
        child: Text(text),
      );

  Widget _buildGrid() {
    List<Container> list = _buildGridTileList(30);
    return GridView.extent(
        maxCrossAxisExtent: 200,
        padding: const EdgeInsets.all(5),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: list);
  }

  List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Container(
          child: Image.network(
              'https://raw.githubusercontent.com/coska/2018.RestaurantPOS_Server/master/src/main/webapp/products//200x200/Appetizer_images.001.png')));
// Image.asset('images/pic$i.jpg')
}

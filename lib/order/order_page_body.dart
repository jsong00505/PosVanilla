import 'package:flutter/material.dart';
import 'package:pos_vanilla/order/order_detail.dart';
import 'package:pos_vanilla/order/order_selector.dart';

class OrderPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderPageState();
}

class OrderPageState extends State<OrderPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /*Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Row1')],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OrderSelector(),
              ],
            ),*/
            Expanded(child: OrderDetail()),
            OrderSelector(),
          ],
        ),
      ),
    );
  }
}

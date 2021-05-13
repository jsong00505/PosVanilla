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
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: OrderDetail(),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            child: OrderSelector(),
          ),
          flex: 3,
        ),
      ],
    );
  }
}

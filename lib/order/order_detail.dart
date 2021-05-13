import 'package:flutter/material.dart';
import 'package:pos_vanilla/style/order_button.dart';

class OrderDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _topView(),
        _secondTierView(),
        _itemHeader(),
        _itemList(),
        _itemTail('SUBTOTAL'),
        _itemTail('DISCOUNT'),
        _itemTail('TAX'),
        _itemTail('TOTAL'),
        _actionButtonView(),
      ],
    );
  }

  Widget _button(var text) => TextButton(
        style: OrderButtonStyle.regularButtonStyle,
        onPressed: () {},
        child: Text(text),
      );

  Widget _topView() => Expanded(
        child: Row(
          children: [
            Expanded(
              child: Text('LOGOUT'),
              flex: 1,
            ),
            Expanded(
              child: Text('6 / 5 2021 20:32'),
              flex: 1,
            ),
          ],
        ),
        flex: 1,
      );

  Widget _secondTierView() => Expanded(
        child: Row(
          children: [
            Expanded(
              child: _button('TABLE 1'),
              flex: 1,
            ),
            Expanded(
              child: _button('TAKE OUT'),
              flex: 1,
            ),
          ],
        ),
        flex: 1,
      );

  Widget _itemHeader() => Expanded(
        child: Container(
          color: Colors.grey,
          child: Row(
            children: [
              Expanded(
                child: Text('ITEM'),
                flex: 3,
              ),
              Expanded(
                child: Text('Qty'),
                flex: 1,
              ),
              Expanded(
                child: Text('Unit Price'),
                flex: 1,
              ),
              Expanded(
                child: Text('Amount'),
                flex: 1,
              ),
            ],
          ),
        ),
        flex: 1,
      );

  Widget _itemList() => Expanded(
        child: Container(
          child: _buildList(),
        ),
        flex: 10,
      );

  Widget _itemTail(var text) => Expanded(
        child: Container(
          color: Colors.grey,
          child: Row(
            children: [
              Expanded(
                child: Text('$text:'),
                flex: 3,
              ),
              Expanded(
                child: Text(''),
                flex: 1,
              ),
              Expanded(
                child: Text(''),
                flex: 1,
              ),
              Expanded(
                child: Text('100.00'),
                flex: 1,
              ),
            ],
          ),
        ),
        flex: 1,
      );

  Widget _actionButtonView() => Expanded(
        child: Row(
          children: [
            Expanded(
              child: _button('Cancel'),
              flex: 1,
            ),
            Expanded(
              child: _button('Order'),
              flex: 1,
            ),
            Expanded(
              child: _button('Print Bill'),
              flex: 1,
            ),
          ],
        ),
        flex: 1,
      );

  Widget _buildList() => ListView(
        children: [
          _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
          _tile('The Castro Theater', '429 Castro St', Icons.theaters),
          _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
          _tile('Roxie Theater', '3117 16th St', Icons.theaters),
          _tile('United Artists Stonestown Twin', '501 Buckingham Way',
              Icons.theaters),
          _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
          Divider(),
          _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
          _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
          _tile(
              'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
          _tile('La Ciccia', '291 30th St', Icons.restaurant),
          _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
          _tile('The Castro Theater', '429 Castro St', Icons.theaters),
          _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
          _tile('Roxie Theater', '3117 16th St', Icons.theaters),
          _tile('United Artists Stonestown Twin', '501 Buckingham Way',
              Icons.theaters),
          _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
          Divider(),
          _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
          _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
          _tile(
              'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
          _tile('La Ciccia', '291 30th St', Icons.restaurant),
        ],
      );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
}

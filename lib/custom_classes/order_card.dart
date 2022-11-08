import 'package:dbms_app/data_classes/items.dart';
import 'package:dbms_app/data_classes/order_details.dart';
import 'package:flutter/material.dart';

class order_details extends StatelessWidget {
  order_data orders;

  order_details({required this.orders});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        margin: EdgeInsets.all(8.0),
        elevation: 10.0,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                orders.order_image,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Order ID:${orders.orderid}",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                Text("Table Number:${orders.table_num}"),
                SizedBox(height: 5.0),
                Text("Last Update:${orders.last_update}PM")
              ],
            ),
          ),
        ]));
  }
}

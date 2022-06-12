import 'package:flutter/material.dart';

import 'package:instagram/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              color: Colors.grey[300],
              child: Row(
                children: [
                  Icon(Icons.calendar_today),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.grey[300],
                    child: Text(
                      "Shop",
                      style: TextStyle(color: Colors.grey[1000]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ShopGrid());
  }
}

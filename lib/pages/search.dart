import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

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
                  Icon(Icons.search),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.grey[300],
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[1000]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ExploreGrid());
  }
}

import 'package:flutter/material.dart';
class WhatRead extends StatelessWidget {
  const WhatRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Что читают'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Друзья',
              ),
              Tab(
                text: 'Популярное',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(child: Text('Друзья'),),
            Container(child: Text('Популярное'),)
          ],
        ),
      ),
    );
  }
}

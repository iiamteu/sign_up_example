import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            'WishList',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      )),
    );
  }
}

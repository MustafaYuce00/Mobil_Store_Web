import 'dart:math';

import 'package:flutter/material.dart';

final ScrollController _scrollController = ScrollController();
mainAppBar(context) {
  return AppBar(
    toolbarHeight: min(100, MediaQuery.of(context).size.height * 0.2),
    actionsIconTheme: IconThemeData(color: Colors.black),
    actions: [
      TextButton(
          onPressed: () {},
          child: Text(
            'Home',
            style: TextStyle(overflow: TextOverflow.ellipsis),
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            'About',
            style: TextStyle(overflow: TextOverflow.ellipsis),
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            'Contact',
            style: TextStyle(overflow: TextOverflow.ellipsis),
          )),
    
    ],
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Image.asset('assets/logo.png', height: 250, width: 250),
            const SizedBox(width: 10),
          ],
        ),
      ],
    ),
  );
}

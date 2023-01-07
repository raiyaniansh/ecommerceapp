import 'package:ecommerceapp/home.dart';
import 'package:ecommerceapp/product.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Homepage(),
        '2':(context) => Second(),
      },
    )
  );
}
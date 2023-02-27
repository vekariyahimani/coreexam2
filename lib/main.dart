import 'package:coreexam2/page1.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Page1(),

      },
    )
  );
}
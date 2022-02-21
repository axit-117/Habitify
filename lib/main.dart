

import 'page1.dart';
import 'page2.dart';

import 'package:flutter/material.dart';


void main()=>runApp( MaterialApp(

  routes: {
   '/': (context) => function_one(),
    '/home': (context) =>second(),

  },
));


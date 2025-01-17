

import 'package:flutter/material.dart';
import 'package:myapp/app/app.locator.dart';
import 'package:myapp/app/app.router.dart';
import 'package:myapp/views/counter_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main()async {
  await setupLocator();
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    navigatorKey: StackedService.navigatorKey,
    onGenerateRoute: StackedRouter().onGenerateRoute,

    );  
  }
}


import 'package:flutter/material.dart';
import 'package:isloo_tech_assignment/controller.dart/product_detail_controller.dart';
import 'package:isloo_tech_assignment/controller.dart/product_list_controller.dart';
import 'package:isloo_tech_assignment/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<ProductListController>(
        create: (context) => ProductListController(),
        child: ChangeNotifierProvider<ProductDetailController>(
            create: (context) => ProductDetailController(),
            child: HomeScreen()),
      ),
    );
  }
}

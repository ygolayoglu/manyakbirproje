import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'shop_page_of_incredible_project.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: ShopPageOfIncredibleProject(),
      ),
    );
  }
}

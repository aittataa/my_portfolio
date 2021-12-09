import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/modules/home/controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Portfolio',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

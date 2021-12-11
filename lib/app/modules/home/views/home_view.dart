import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/config/messages/app_message.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';
import 'package:my_portfolio/app/modules/home/controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.transparentColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.backgroundColor_1,
              AppTheme.backgroundColor_2,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              child: Image.asset(AppMessage.appProfile),
            ),
            ListTile(
              title: Text(
                AppMessage.appFullName,
                style: TextStyle(color: AppTheme.primaryTextColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

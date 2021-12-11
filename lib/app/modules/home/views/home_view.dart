import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
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
      resizeToAvoidBottomInset: false,
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
            Expanded(
              child: CircleAvatar(
                radius: 100,
                child: Image.asset(AppMessage.profileImage),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 10,
              title: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  AppMessage.profileName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                    fontSize: 18,
                  ),
                ),
              ),
              subtitle: Text(
                AppMessage.profileDisc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.primaryTextColor.withOpacity(.75),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 10,
              title: Text(
                AppMessage.checkButton,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.primaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OpenButton(
                      image: AppMessage.githubIcon,
                      onTap: () {
                        final String url = AppMessage.githubLink;
                        html.window.open(url, "GitHub");
                      },
                    ),
                    OpenButton(
                      image: AppMessage.linkedinIcon,
                      onTap: () {
                        final String url = AppMessage.linkedinLink;
                        html.window.open(url, "LinkedIn");
                      },
                    ),
                    OpenButton(
                      image: AppMessage.googlePlayIcon,
                      onTap: () {
                        final String url = AppMessage.googlePlayLink;
                        html.window.open(url, "Google Play");
                      },
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 10,
              title: Text(
                AppMessage.contactButton,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.primaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContactButton(
                      image: AppMessage.phoneIcon,
                      label: "+212 673 377 573",
                      onTap: () {
                        // final String url = AppMessage.linkedinLink;
                        // html.window.open(url, "LinkedIn");
                      },
                    ),
                    SizedBox(width: 10),
                    ContactButton(
                      image: AppMessage.gmailIcon,
                      label: "aittata.abderrahim@gmail.com",
                      onTap: () {
                        // final String url = AppMessage.googlePlayLink;
                        // html.window.open(url, "Google Play");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OpenButton extends StatelessWidget {
  final String image;
  final Function()? onTap;
  const OpenButton({
    Key? key,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          margin: EdgeInsets.all(5),
          child: Image.asset(
            image,
            color: AppTheme.imageColor,
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final String image;
  final String label;
  final Function()? onTap;
  const ContactButton({
    Key? key,
    required this.image,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Image.asset(
                image,
                color: AppTheme.imageColor,
                width: 30,
                height: 30,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.primaryTextColor.withOpacity(.75),
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

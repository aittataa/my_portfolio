import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/messages/app_message.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';
import 'package:my_portfolio/app/modules/home/widgets/contact_button.dart';
import 'package:my_portfolio/app/modules/home/widgets/open_button.dart';

class HomeView extends StatelessWidget {
  //final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.transparentColor,
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppTheme.backgroundColor_1, AppTheme.backgroundColor_2],
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
                    overflow: TextOverflow.ellipsis,
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
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor.withOpacity(.75),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 10,
                title: Text(
                  AppMessage.checkButton,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: SizedBox(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OpenButton(
                        image: AppMessage.githubIcon,
                        message: "GitHub",
                        onTap: () {
                          final String url = AppMessage.githubLink;
                          html.window.open(url, "GitHub");
                        },
                      ),
                      OpenButton(
                        image: AppMessage.linkedinIcon,
                        message: "LinkedIn",
                        onTap: () {
                          final String url = AppMessage.linkedinLink;
                          html.window.open(url, "LinkedIn");
                        },
                      ),
                      OpenButton(
                        image: AppMessage.googlePlayIcon,
                        message: "Google Play",
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
                minVerticalPadding: 0,
                subtitle: Text(
                  AppMessage.contactButton,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (constraints.constrainWidth() >= 700)
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: myList,
                  ),
                )
              else
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: myList,
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}

List<ContactButton> myList = [
  ContactButton(
    image: AppMessage.phoneIcon,
    label: "+212 673 377 573",
    onTap: () {},
  ),
  ContactButton(
    image: AppMessage.gmailIcon,
    label: "aittata.abderrahim@gmail.com",
    onTap: () {},
  ),
  ContactButton(
    image: AppMessage.locationIcon,
    label: "Marrakech, MOROCCO",
    onTap: () {},
  ),
];

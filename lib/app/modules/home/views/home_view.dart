import 'dart:html' as html;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/messages/app_message.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';
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
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                minVerticalPadding: 10,
                title: Container(
                  padding: EdgeInsets.all(10),
                  child: AutoSizeText(
                    AppMessage.profileName,
                    minFontSize: 10,
                    maxFontSize: 20,
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
                subtitle: AutoSizeText(
                  AppMessage.profileDisc,
                  minFontSize: 10,
                  maxFontSize: 20,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor.withOpacity(.75),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                minVerticalPadding: 10,
                title: AutoSizeText(
                  AppMessage.checkButton,
                  minFontSize: 10,
                  maxFontSize: 20,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
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
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                minVerticalPadding: 10,
                title: AutoSizeText(
                  AppMessage.contactButton,
                  minFontSize: 10,
                  maxFontSize: 20,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // subtitle: Container(
                //   padding: EdgeInsets.all(5),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       ContactButton(
                //         image: AppMessage.phoneIcon,
                //         label: "+212 673 377 573",
                //         onTap: () {},
                //       ),
                //       SizedBox(width: 10),
                //       ContactButton(
                //         image: AppMessage.gmailIcon,
                //         label: "aittata.abderrahim@gmail.com",
                //         onTap: () {},
                //       ),
                //     ],
                //   ),
                // ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContactButton(
                      image: AppMessage.phoneIcon,
                      label: "+212 673 377 573",
                      onTap: () {},
                    ),
                    SizedBox(width: 10),
                    ContactButton(
                      image: AppMessage.gmailIcon,
                      label: "aittata.abderrahim@gmail.com",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
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
              child: AutoSizeText(
                label,
                minFontSize: 10,
                maxFontSize: 20,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
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

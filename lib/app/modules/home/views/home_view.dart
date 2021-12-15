import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/messages/app_message.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';
import 'package:my_portfolio/app/modules/home/widgets/contact_button.dart';
import 'package:my_portfolio/app/modules/home/widgets/open_button.dart';

import '../../../config/messages/app_message.dart';

class HomeView extends StatelessWidget {
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
                  backgroundColor: AppTheme.transparentColor,
                  child: Image.asset(AppMessage.profileImage),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 10,
                title: Padding(
                  padding: EdgeInsets.all(5),
                  child: SelectableText(
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
                subtitle: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
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
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Text(
                  AppMessage.checkButton,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
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
                        message: AppMessage.githubLabel,
                        onTap: () {
                          html.window.open(
                            AppMessage.githubLink,
                            AppMessage.githubLabel,
                          );
                        },
                      ),
                      OpenButton(
                        image: AppMessage.linkedinIcon,
                        message: AppMessage.linkedinLabel,
                        onTap: () {
                          html.window.open(
                            AppMessage.linkedinLink,
                            AppMessage.linkedinLabel,
                          );
                        },
                      ),
                      OpenButton(
                        image: AppMessage.googlePlayIcon,
                        message: AppMessage.googlePlayLabel,
                        onTap: () {
                          html.window.open(
                            AppMessage.googlePlayLink,
                            AppMessage.googlePlayLabel,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: SizedBox(
                  //height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //children: [DownloadButton()],
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    AppMessage.orButton,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Text(
                  AppMessage.contactButton,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ),
              if (constraints.constrainWidth() >= 700)
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: myList,
                  ),
                )
              else
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: myList,
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Copyright © ${DateTime.now().year}, ${AppMessage.profileName}. All Rights Reserved.",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor.withOpacity(.25),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 10,
                  ),
                ),
              )
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
    label: AppMessage.profilePhone,
  ),
  ContactButton(
    image: AppMessage.gmailIcon,
    label: AppMessage.profileEmail,
  ),
  ContactButton(
    image: AppMessage.locationIcon,
    label: AppMessage.profileAddress,
  ),
];

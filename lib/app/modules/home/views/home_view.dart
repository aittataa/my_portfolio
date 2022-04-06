import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/app_function.dart';

import '../../../config/app_message.dart';
import '../../../config/app_theme.dart';
import '../widgets/contact_button.dart';
import '../widgets/open_button.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
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
                  backgroundColor: AppTheme.transparentColor,
                  child: Image.asset("${AppMessage.profileImage}"),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 25,
                title: Padding(
                  padding: EdgeInsets.all(5),
                  child: SelectableText(
                    "${AppMessage.profileName}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "${AppMessage.profileDisc}",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor.withOpacity(.75),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Text(
                  "${AppMessage.checkButton}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                subtitle: SizedBox(
                  height: 75,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OpenButton(
                        image: AppMessage.githubIcon,
                        message: AppMessage.githubLabel,
                        onTap: () {
                          AppFunction.launchURL("${AppMessage.githubLink}");
                        },
                      ),
                      OpenButton(
                        image: AppMessage.linkedinIcon,
                        message: AppMessage.linkedinLabel,
                        onTap: () {
                          AppFunction.launchURL("${AppMessage.linkedinLink}");
                        },
                      ),
                      OpenButton(
                        image: AppMessage.googlePlayIcon,
                        message: AppMessage.googlePlayLabel,
                        onTap: () {
                          AppFunction.launchURL("${AppMessage.googlePlayLink}");
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "${AppMessage.orButton}",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Text(
                  "${AppMessage.contactButton}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Builder(builder: (context) {
                if (constraints.constrainWidth() >= 700)
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: myList,
                    ),
                  );
                else
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: myList,
                    ),
                  );
              }),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "${AppMessage.copyright}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor.withOpacity(.5),
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
    return Scaffold(
      drawerScrimColor: AppTheme.transparentColor,
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
                  child: Image.asset("${AppMessage.profileImage}"),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 25,
                title: Padding(
                  padding: EdgeInsets.all(5),
                  child: SelectableText(
                    "${AppMessage.profileName}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "${AppMessage.profileDisc}",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor.withOpacity(.75),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Text(
                  "${AppMessage.checkButton}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                subtitle: SizedBox(
                  height: 75,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OpenButton(
                        image: AppMessage.githubIcon,
                        message: AppMessage.githubLabel,
                        onTap: () {
                          AppFunction.launchURL("${AppMessage.githubLink}");
                        },
                      ),
                      OpenButton(
                        image: AppMessage.linkedinIcon,
                        message: AppMessage.linkedinLabel,
                        onTap: () {
                          AppFunction.launchURL("${AppMessage.linkedinLink}");
                        },
                      ),
                      OpenButton(
                        image: AppMessage.googlePlayIcon,
                        message: AppMessage.googlePlayLabel,
                        onTap: () {
                          AppFunction.launchURL("${AppMessage.googlePlayLink}");
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "${AppMessage.orButton}",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Text(
                  "${AppMessage.contactButton}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Builder(builder: (context) {
                if (constraints.constrainWidth() >= 700)
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: myList,
                    ),
                  );
                else
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: myList,
                    ),
                  );
              }),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "${AppMessage.copyright}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppTheme.primaryTextColor.withOpacity(.5),
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
    onTap: () => {AppFunction.launchURL("${AppMessage.phoneLink}")},
  ),
  ContactButton(
    image: AppMessage.gmailIcon,
    label: AppMessage.profileEmail,
    onTap: () => {AppFunction.launchURL("${AppMessage.emailLink}")},
  ),
  ContactButton(
    image: AppMessage.locationIcon,
    label: AppMessage.profileAddress,
    onTap: () => {AppFunction.launchURL("${AppMessage.addressLink}")},
  ),
];

import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/app_function.dart';

import '../../../config/app_constant.dart';
import '../../../config/app_message.dart';
import '../../../config/app_theme.dart';
import '../widgets/contact_button.dart';
import '../widgets/open_button.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: AppTheme.transparentColor,
      backgroundColor: AppTheme.transparentColor,
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth);
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Container(
                padding: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppTheme.backgroundColor_1, AppTheme.backgroundColor_2],
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: AppTheme.transparentColor,
                        child: Image.asset("${AppMessage.profileImage}"),
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      minVerticalPadding: 0,
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

                    ///
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      minVerticalPadding: 0,
                      title: TitleTile(title: "My Projects"),
                    ),
                    Container(
                      width: 300,
                      height: 400,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppTheme.backColor.withOpacity(.25),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [AppConstant.boxShadow],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              AppMessage.pollup_icon,
                              width: 200,
                              height: 200,
                            ),
                          ),
                          ListTile(
                            title: TitleTile(
                              title: "Pollup",
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      minVerticalPadding: 0,
                      title: TitleTile(title: AppMessage.checkButton),
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
                      title: TitleTile(title: AppMessage.contactButton),
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
              ),
            ),
          ),
        );
      }),
    );
  }
}

class TitleTile extends StatelessWidget {
  final String title;
  const TitleTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: AppTheme.primaryTextColor,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
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

import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';

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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              height: 30,
              width: 30,
              child: Image.asset(
                image,
                color: AppTheme.imageColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SelectableText(
              label,
              style: TextStyle(
                color: AppTheme.primaryTextColor.withOpacity(.75),
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

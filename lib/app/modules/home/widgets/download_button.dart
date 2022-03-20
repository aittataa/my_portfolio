import 'package:flutter/material.dart';

import '../../../config/app_message.dart';
import '../../../config/app_theme.dart';

class DownloadButton extends StatelessWidget {
  final Function()? onPressed;
  const DownloadButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(15),
        ),
        child: Text(
          AppMessage.downloadButton,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppTheme.primaryTextColor,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}

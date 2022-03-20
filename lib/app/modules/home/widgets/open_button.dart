import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/app_constant.dart';

import '../../../config/app_theme.dart';

class OpenButton extends StatefulWidget {
  final String image;
  final String message;
  final Function()? onTap;
  const OpenButton({
    Key? key,
    required this.image,
    required this.message,
    this.onTap,
  }) : super(key: key);

  @override
  State<OpenButton> createState() => _OpenButtonState(image, message, onTap);
}

class _OpenButtonState extends State<OpenButton> {
  final String image;
  final String message;
  final Function()? onTap;
  _OpenButtonState(this.image, this.message, this.onTap);
  late Color _imageColor = AppTheme.imageColor.withOpacity(.75);
  late double _imageSize = 30;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        onEnter: (enterEvent) {
          setState(() {
            _imageColor = AppTheme.imageColor;
            _imageSize = 40;
          });
        },
        onExit: (exitEvent) {
          setState(() {
            _imageColor = AppTheme.imageColor.withOpacity(.75);
            _imageSize = 30;
          });
        },
        cursor: SystemMouseCursors.click,
        child: Tooltip(
          message: message,
          child: AnimatedContainer(
            curve: AppConstant.curve,
            duration: AppConstant.durationAnimated,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "$image",
              color: _imageColor,
              width: _imageSize,
              height: _imageSize,
            ),
          ),
        ),
      ),
    );
  }
}

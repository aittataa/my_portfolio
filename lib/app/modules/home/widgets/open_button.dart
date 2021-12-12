import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';

class OpenButton extends StatefulWidget {
  final String image;
  final Function()? onTap;
  const OpenButton({
    Key? key,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  State<OpenButton> createState() => _OpenButtonState();
}

class _OpenButtonState extends State<OpenButton> {
  late Color _imageColor = AppTheme.imageColor.withOpacity(.75);
  late double _imageSize = 30;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (enterEvent) {
          setState(() {
            _imageColor = AppTheme.imageColor;
            _imageSize = 35;
          });
        },
        onExit: (exitEvent) {
          setState(() {
            _imageColor = AppTheme.imageColor.withOpacity(.75);
            _imageSize = 30;
          });
        },
        cursor: SystemMouseCursors.click,
        child: Container(
          margin: EdgeInsets.all(5),
          child: Image.asset(
            widget.image,
            color: _imageColor,
            width: _imageSize,
            height: _imageSize,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../dart_color.dart';
import '../dart_size.dart';
import '../dart_font.dart';
class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        margin: EdgeInsets.all(4),
        constraints: BoxConstraints(minWidth: 97),
        decoration: BoxDecoration(
            color: adrColor.backgroundPrimary, // << CHANGE HERE
            borderRadius: BorderRadius.circular(adrSize.radiusSmall)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              //color: Colors.black, //warna text
              color: adrColor.textButtonPrimary,
              fontFamily: adrFont.button1FontFamily,
              fontWeight: adrFont.weightMedium,
              fontSize: adrFont.button1FontSize),
        ),
      ),
    );
  }
}

class ButtonSecondary extends StatelessWidget {
  const ButtonSecondary({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100), //border radius focus
      child: Container(
        margin: EdgeInsets.all(4),
        constraints: BoxConstraints(minWidth: 97),
        decoration: BoxDecoration(
            color: adrColor.backgroundLink,
            border:
                Border.all(color: adrColor.borderLink, width: 2), //border color
            borderRadius: BorderRadius.circular(adrSize.radiusSmall)),
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: adrColor.textLink,
              fontFamily: adrFont.button1FontFamily,
              fontWeight: adrFont.weightMedium,
              fontSize: adrFont.button1FontSize),
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100), //border radius focus

      child: Container(
        margin: EdgeInsets.all(8),
        constraints: BoxConstraints(minWidth: 97),
        decoration: BoxDecoration(),
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: adrColor.textLink,
              fontFamily: adrFont.button1FontFamily,
              fontWeight: adrFont.weightMedium,
              fontSize: adrFont.button1FontSize),
        ),
      ),
    );
  }
}

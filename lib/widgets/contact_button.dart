import 'package:flutter/material.dart';
import '../dart_color.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final Function()? onPressed;
  const ContactButton({
    Key? key,
    required this.buttonText,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: TextButton.icon(
          style: TextButton.styleFrom(
            textStyle: TextStyle(color: Colors.white),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0)),
          ),
          onPressed: onPressed,
          icon: icon,
          label: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$buttonText',
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}

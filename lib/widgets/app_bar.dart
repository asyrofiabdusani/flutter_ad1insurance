import 'package:flutter/material.dart';
import '../dart_color.dart';
import '../widgets/contact_button.dart';
import '../widgets/button_widget.dart';
import '../widgets/dropdown_button.dart';

class Portofolio extends StatefulWidget {
  @override
  State<Portofolio> createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 2,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 9),
            child: RichText(
                text: TextSpan(children: [
              WidgetSpan(
                child: Container(
                  padding: EdgeInsets.only(right: 5),
                  child: Image.asset(
                    "icons/location.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              TextSpan(
                text: "0201 Bandung",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ])),
            // child: Text(
            //   '0201 Bandung',
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 15,
            //       fontWeight: FontWeight.w500),
            // ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Text(
              "|",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 9),
            child: RichText(
                text: TextSpan(children: [
              WidgetSpan(
                child: Container(
                  padding: EdgeInsets.only(right: 5),
                  child: Image.asset(
                    "icons/user.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              TextSpan(
                text: "Customer Service",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ])),
            // child: Text(
            //   '0201 Bandung',
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 15,
            //       fontWeight: FontWeight.w500),
            // ),
          )
        ],
      ),
      actions: [
        ButtonSecondary(text: 'test', onPressed: () => print('')),
        ContactButton(
            buttonText: 'Test',
            icon: const Icon(Icons.circle_sharp),
            onPressed: () => print('hellow World')),
        ButtonPrimary(text: 'Login', onPressed: () => print('hellow World'))
      ],
    ));
  }
}

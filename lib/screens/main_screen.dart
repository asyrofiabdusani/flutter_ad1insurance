import 'dart:html';

import 'package:flutter/material.dart';
import 'package:latihan/widgets/accordion.dart';
import 'package:latihan/widgets/app_bar.dart';
import 'package:latihan/widgets/side_bar.dart';
import '../widgets/contact_button.dart';
import '../widgets/button_widget.dart';
import '../widgets/dropdown_button.dart';
import '../widgets/app_bar/app_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            child: SideBar(),
          ),

          //Container(
          //   color: Color.fromRGBO(255, 235, 116, 1.0),
          //   child: Column(
          //     children: [
          //       Stack(
          //         alignment: Alignment.center,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(top: 32),
          //             child: Image.asset('logo-ADMF.png'),
          //           )
          //         ],
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(top: 56),
          //         child: SizedBox(
          //           height: 50,
          //           width: 250,
          //           child: ContactButton(
          //               buttonText: 'Dashboard',
          //               icon: Icon(Icons.house, color: Colors.white),
          //               onPressed: () => print('hellow World')),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ),
        Expanded(flex: 3, child: TopBar()),
      ],
    );
  }
}

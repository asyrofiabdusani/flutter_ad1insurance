import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latihan/dart_color.dart';
import 'package:latihan/dart_size.dart';
import 'sidebar_widget/SidebarListTile.dart';
import 'sidebar_widget/AccordionMenu.dart';
import 'package:latihan/dart_font.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(255, 235, 116, 1.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                "images/logo-ADMF-background-putih-2x.png",
                width: 150,
              ),
            ),
            SidebarListTile(
              title: "Dashboard",
              icon: "icons/Home.svg",
            ),
            SizedBox(
              height: 10,
            ),
            AccordionMenu(
              title: "Insurance Claim Procces",
              icon: "icons/insuranceclaim.svg",
            ),
          ],
        ),
      ),
    );
  }
}

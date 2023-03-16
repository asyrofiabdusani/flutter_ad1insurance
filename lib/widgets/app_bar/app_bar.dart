import 'package:flutter/material.dart';
import '../content/content.dart';
import 'package:latihan/dart_font.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TopBar());
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Color(0xff344054),
            title: Row(
              children: [
                // left menu
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      // location
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child:
                              //locations
                              Row(children: [
                            Icon(Icons.location_on, color: Colors.blueAccent),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                '0201 Bandung',
                                style:
                                    TextStyle(fontSize: adrFont.body1FontSize),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.keyboard_arrow_down,
                                    color: Colors.blueAccent)),
                          ]),
                        ),
                      ),
                      Text('|'),
                      // position
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(children: [
                            Icon(
                              Icons.person,
                              color: Colors.blueAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Customer Service',
                                style:
                                    TextStyle(fontSize: adrFont.body1FontSize),
                              ),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                // right menu
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // ring
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications,
                                color: Colors.blueAccent)),
                        // account
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(children: [
                              Icon(Icons.account_circle_rounded,
                                  color: Colors.blueAccent),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  'Jony Sins',
                                  style: TextStyle(
                                      fontSize: adrFont.body1FontSize),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blueAccent)),
                            ]),
                          ),
                        )
                      ],
                    ))
              ],
            )),
      ),
      body: BodyContent(),
    );
  }
}

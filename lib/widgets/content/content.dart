import 'package:flutter/material.dart';
import 'package:latihan/widgets/button_widget.dart';
import 'package:latihan/dart_font.dart';
import 'package:latihan/dart_color.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BodyContent(),
    );
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Row(children: [
              Expanded(flex: 1, child: CardContent()),
              Expanded(flex: 1, child: CardContent()),
              Expanded(flex: 1, child: CardContent()),
              Expanded(flex: 1, child: CardContent()),
            ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('To Do List'),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, bottom: 18),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Draft',
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.fromLTRB(
                                                      18, 18, 18, 18),
                                                  backgroundColor: adrColor
                                                      .backgroundButtonPrimaryActive,
                                                  foregroundColor: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100))),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.search)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.all(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: DataTable(
                            border: TableBorder.all(
                              width: 1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            headingRowHeight: 98,
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Expanded(
                                  child: Text(
                                    'No. Kontrak',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Expanded(
                                  child: Text(
                                    'Nama Nasabah',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Expanded(
                                  child: Text(
                                    'Perusahaan Asuransi',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Expanded(
                                  child: Text(
                                    'Jenis Pelaporan',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Expanded(
                                  child: Text(
                                    'Aksi',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ],
                            rows: const <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Sarah')),
                                  DataCell(Text('19')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Sarah')),
                                  DataCell(Text('19')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Sarah')),
                                  DataCell(Text('19')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Sarah')),
                                  DataCell(Text('19')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Sarah')),
                                  DataCell(Text('19')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                  DataCell(Text('Student')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff5348AB),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'KLAIM IN',
              style:
                  TextStyle(fontSize: adrFont.h4FontSize, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                '20',
                style: TextStyle(
                    fontSize: 64,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(0),
                textStyle: const TextStyle(fontSize: adrFont.subtitle2FontSize),
              ),
              onPressed: () {},
              child: const Text('Selengkapnya'),
            ),
          ],
        ),
      ),
    );
  }
}

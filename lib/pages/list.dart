import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  createPDF(number) async {
    final pdf.Document newPDF = pdf.Document();

    newPDF.addPage(pdf.MultiPage(
      build: (context) => [
        pdf.TableHelper.fromTextArray(
          data: <List<int>>[
            <int>[number]
          ]
        )],
      )
    );

    // On Flutter, use the [path_provider](https://pub.dev/packages/path_provider) library:
      // final output = await getTemporaryDirectory();
      // final file = File("${output.path}/example.pdf");
    // final file = FileSystemEntity.typeSync(path)
    final file = File("example.pdf");
    await file.writeAsBytes(await newPDF.save());

    // final String directory = (await getApplicationDocumentsDirectory()).path;
    // final path = '$directory/pdf_generate.pdf';
    // final File file = File(path);
    // file.writeAsBytesSync(newPDF.save() as List<int>);
  }

  final list = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.picture_as_pdf)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            child: ListTile(
              title: Text(list[index].toString()),
              leading: IconButton(
                onPressed: (){
                  createPDF(list[index]);
                }, 
                icon: const Icon(Icons.abc)),
            ),
          );
        },
      ),
    );
  }
}
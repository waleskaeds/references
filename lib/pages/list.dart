import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:references/pages/pdf_view.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Future<String> getFilePath() async {
    try{
      Directory appDocument = await getApplicationDocumentsDirectory();
      String appDocumentPath = appDocument.path;
      String filePath = '$appDocumentPath/teste.pdf';
      return filePath;
    } catch(_){
      _.toString();
    }
    return '';
  }

  void readFile(String path) async {
    File file = File(await getFilePath());
    final fileContent = await file.readAsBytes();
    if(mounted) Navigator.push(context, MaterialPageRoute(builder: (context) => PdfView(bytes: fileContent, path: path,),));
  }

  createListFile(List<int> list) async {
    final pdf.Document newPDF = pdf.Document();

    newPDF.addPage(pdf.MultiPage(
      margin: const pdf.EdgeInsets.all(10),
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return <pdf.Widget> [
          pdf.Container(
          width: double.infinity,
          child: pdf.Column(
            mainAxisAlignment: pdf.MainAxisAlignment.center,
            crossAxisAlignment: pdf.CrossAxisAlignment.center,
            children: [
              pdf.Text(
                'Grupo Malwee',
                style: const pdf.TextStyle(
                  fontSize: 30
                )
              ),
              pdf.SizedBox(height: 20),
              pdf.ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => pdf.TableHelper.fromTextArray(
                data: <List<String>>[
                  [list[index].toString()]
                ]
              ),
              )
            ]
          ))
        ];
      },
      )
    );

    File file = File(await getFilePath());
    file.writeAsBytes(await newPDF.save());
    readFile(file.path);
  }

  createFile(number) async {
    final pdf.Document newPDF = pdf.Document();

    newPDF.addPage(pdf.MultiPage(
      build: (context) => [
        pdf.TableHelper.fromTextArray(
          data: 
          <List<String>>[
            ['Número'],[number.toString()]
          ]
        )],
      )
    );

    File file = File(await getFilePath());
    file.writeAsBytes(await newPDF.save());
    readFile(file.path);
  }

  List<int> list = [
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
            onPressed: (){
              createListFile(list);
            }, 
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
                  createFile(list[index]);
                }, 
                icon: const Icon(Icons.abc)),
            ),
          );
        },
      ),
    );
  }
}
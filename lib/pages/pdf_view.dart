import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:share_extend/share_extend.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends StatefulWidget {
  final Uint8List bytes;
  final String path;
  const PdfView({super.key, required this.bytes, required this.path});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              ShareExtend.share(widget.path, 'file');
            }, 
            icon: const Icon(Icons.share)
          )
        ],
      ),
      body: SfPdfViewer.memory(widget.bytes)
    );
  }
}
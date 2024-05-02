import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class hadrichons extends StatefulWidget {
  const hadrichons({super.key});

  @override
  State<hadrichons> createState() => _hadrichonsState();
}

class _hadrichonsState extends State<hadrichons> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/pdfs/CVONSHADRICH.pdf'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hadrich ONS ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Column(
      children: [
        _pdfView(),
      ],
    );
  }

  Widget _pdfView() {
    return Expanded(
        child: PdfViewPinch(
            scrollDirection: Axis.vertical, controller: pdfControllerPinch));
  }
}

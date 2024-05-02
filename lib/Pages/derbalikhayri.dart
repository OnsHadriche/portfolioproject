import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class derbalikhayri extends StatefulWidget {
  const derbalikhayri({super.key});

  @override
  State<derbalikhayri> createState() => _derbalikhayriState();
}

class _derbalikhayriState extends State<derbalikhayri> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/pdfs/DERBALIKhayreddine.pdf'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DERBALI Khyredddine",
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

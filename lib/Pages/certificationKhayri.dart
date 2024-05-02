// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class CertificatKhayri extends StatelessWidget {
  const CertificatKhayri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Certifications",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue[900],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildCertificationItem(
                title:
                    "2022-present: Second-year student in Software Engineering",
                subTitle:
                    "International Institus of Technology-American University IIT",
                image: 'images/logoISB.png',
              ),
              _buildCertificationItem(
                title:
                    "2019-2022: Bachelor Of Electronics, Electrotechnics, and Automation",
                subTitle: "Faculty of Sciences Of SFAX ,FSS",
                image: 'images/logoISB.png',
              ),
              _buildCertificationItem(
                title: "2019: Bachelor’s degree in Technical Science",
                subTitle: "9 APRIL 1938 SIDI BOUZID",
                image: 'images/logoISB.png',
              ),
            ],
          ),
        ));
  }

  Widget _buildCertificationItem({
    required String title,
    required String subTitle,
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
      child: GFCard(
        boxFit: BoxFit.cover,
        color: const Color.fromARGB(255, 13, 67, 110),
        height: 120,
        image: Image.asset(
            image), // Utilisation de Image.asset avec le chemin de l'image
        title: GFListTile(
          title: Text(title, style: const TextStyle(color: Colors.white)),
          subTitle: Text(subTitle, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

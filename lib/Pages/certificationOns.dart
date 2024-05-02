// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class CertificatOns extends StatelessWidget {
  const CertificatOns({Key? key}) : super(key: key);

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
                    "2017-2020: Master of Science in Telecommunications and Network Systems",
                subTitle:
                    "National School of Electronics and Telecommunications of Sfax",
                image: 'images/logoISB.png',
              ),
              _buildCertificationItem(
                title:
                    "2014-2017: Bachelor's degree in Information and Communication Science and Technology",
                subTitle:
                    "National School of Electronics and Telecommunications of Sfax",
                image: 'images/logoISB.png',
              ),
              _buildCertificationItem(
                title: "2014: Baccalaureate in Mathematics",
                subTitle: "Abou Kacem Chebbi High School",
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

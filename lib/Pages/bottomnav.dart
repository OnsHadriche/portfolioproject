// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:portfolioproject/Pages/derbalikhayri.dart';
import 'package:portfolioproject/Pages/hadrichons.dart';
import 'package:portfolioproject/Pages/home.dart';
import 'package:portfolioproject/Pages/location.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late GoogleMapScreen location;
  late derbalikhayri dk;
  late hadrichons ho;

  @override
  void initState() {
    homepage = const Home();
    dk = const derbalikhayri();
    ho = const hadrichons();
    location = const GoogleMapScreen();
    pages = [homepage, dk, ho, location];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Theme.of(context).colorScheme.primary,
          color: Colors.black,
          animationDuration: const Duration(microseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            const Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            const Icon(
              Icons.picture_as_pdf_outlined,
              color: Colors.white,
            ),
            const Icon(
              Icons.picture_as_pdf_outlined,
              color: Colors.white,
            ),
            const Icon(
              Icons.person_outlined,
              color: Colors.white,
            )
          ]),
      body: pages[currentTabIndex],
    );
  }
}

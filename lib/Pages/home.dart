import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolioproject/Pages/infoderbali.dart';
import 'package:portfolioproject/Pages/infoons.dart';
import 'package:portfolioproject/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool programming = false, man = false, women = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open To WORK",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mainfont',
                    ),
                  ),
                  Spacer(), // This pushes the buttons to the right
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.nightlight_round),
                        onPressed: () {
                          Provider.of<ThemeProvider>(context, listen: false)
                              .toggleTheme();
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Our profiles",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mainfont',
                ),
              ),
              Text(
                "Discovor and know more about us",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mainfont',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: EdgeInsets.only(right: 20.0), child: showItem()),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => infoderbali()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.transparent, width: 2),
                        ),
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/man.png",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "DERBALI Khayreddine",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mainfont',
                                  ),
                                ),
                                Text(
                                  "SOFTWARE ENGINEER STUDENT",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Mainfont',
                                  ),
                                ),
                                Text("IIT Sfax")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => infohadrich()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.transparent, width: 2),
                        ),
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/women.png",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "HADRICH ONS",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mainfont',
                                  ),
                                ),
                                Text(
                                  "SOFTWARE ENGINEER STUDENT",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Mainfont',
                                  ),
                                ),
                                Text("IIT Sfax")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 2),
                ),
                margin: const EdgeInsets.only(right: 25.0),
                child: Material(
                  elevation: 7.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/logoISB.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .65,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Institut International de Technologie",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mainfont',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                      width: 8), // Adjust the width as needed
                                  Text(
                                    "Sfax Tunisie",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Mainfont',
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            programming = true;
            man = false;
            women = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: programming
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(9),
              child: Image.asset(
                "images/programming.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: programming ? Colors.transparent : Colors.transparent,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            programming = false;
            man = true;
            women = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: man
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(9),
              child: Image.asset(
                "images/man.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: programming ? Colors.transparent : Colors.transparent,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            programming = false;
            man = false;
            women = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                  color: women
                      ? Theme.of(context).colorScheme.primary
                      : const Color.fromARGB(0, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(9),
              child: Image.asset(
                "images/women.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: programming ? Colors.transparent : Colors.transparent,
              ),
            ),
          ),
        )
      ],
    );
  }
}

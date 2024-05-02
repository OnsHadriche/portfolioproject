// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';

class ExperienceOns extends StatefulWidget {
  const ExperienceOns({super.key});

  @override
  State<ExperienceOns> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ExperienceOns>
    with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final AnimationController _sizeController;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _sizeController = AnimationController(
      duration: const Duration(milliseconds: 850),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiences', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Hero(
            tag: 'ListTile-Hero',
            child: Material(
              child: ListTile(
                title: const Text('July 2016 Summer internship - STEG Thyna',
                    style: TextStyle(
                        fontFamily: "Mainfont",
                        color: Color.fromARGB(255, 234, 240, 243),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                subtitle: const Text('more details',
                    style: TextStyle(
                      fontFamily: "Mainfont",
                      color: Color.fromARGB(255, 234, 240, 243),
                    )),
                tileColor: const Color.fromARGB(255, 27, 51, 83),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                            title: const Text(
                                'July 2016 Summer internship - STEG Thyna',
                                style: TextStyle(
                                    fontFamily: "Mainfont",
                                    color: Color.fromARGB(255, 7, 24, 68),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                        body: Center(
                          child: Hero(
                            tag: 'ListTile-Hero',
                            child: Material(
                              child: ListTile(
                                subtitle: const BulletedList(
                                    bullet: Icon(
                                      Icons.signal_cellular_alt_1_bar_rounded,
                                      color: Color.fromARGB(255, 16, 33, 66),
                                    ),
                                    listItems: [
                                      Text(
                                          "Technical control: monitoring of turbine performance parameters and computer-assisted maintenance management CMAO",
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Turbine control system HMI (Human-Machine Interface), DCS (Distributed Control System)',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Mind map training used for project management using Xmind software',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                tileColor:
                                    const Color.fromARGB(255, 235, 236, 238),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
          Hero(
            tag: 'ListTile-Hero-1',
            child: Material(
              child: ListTile(
                title: const Text(
                    'April 2017 - June 2017 End of year project: Inventory management application -ENET’Com store',
                    style: TextStyle(
                        fontFamily: "Mainfont",
                        color: Color.fromARGB(255, 234, 240, 243),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                subtitle: const Text('more details',
                    style: TextStyle(
                      fontFamily: "Mainfont",
                      color: Color.fromARGB(255, 234, 240, 243),
                    )),
                tileColor: const Color.fromARGB(255, 27, 51, 83),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                            title: const Text(
                                'April 2017 - June 2017 End of year project: Inventory management application - ENET’Com store',
                                style: TextStyle(
                                    fontFamily: "Mainfont",
                                    color: Color.fromARGB(255, 7, 24, 68),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                        body: Center(
                          child: Hero(
                            tag: 'ListTile-Hero-1',
                            child: Material(
                              child: ListTile(
                                subtitle: const BulletedList(
                                    bullet: Icon(
                                      Icons.signal_cellular_alt_1_bar_rounded,
                                      color: Color.fromARGB(255, 16, 33, 66),
                                    ),
                                    listItems: [
                                      Text(
                                          "Definition of the project scope and its objectives.",
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Conceptual modeling using UML software',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Identify the possibilities for interaction between the system and the actors using the diagram use cases',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Describe the scenarios: “authentication” and “placing an order using the diagram scenarios',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Creation of a stock management application using WinDe software',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                tileColor:
                                    const Color.fromARGB(255, 235, 236, 238),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
          Hero(
            tag: 'ListTile-Hero-2',
            child: Material(
              child: ListTile(
                title: const Text(
                    'March 2020-Dec. 2020 End of study project: Identification and analysis of hypovigilance',
                    style: TextStyle(
                        fontFamily: "Mainfont",
                        color: Color.fromARGB(255, 234, 240, 243),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                subtitle: const Text('more details',
                    style: TextStyle(
                      fontFamily: "Mainfont",
                      color: Color.fromARGB(255, 234, 240, 243),
                    )),
                tileColor: const Color.fromARGB(255, 27, 51, 83),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                            title: const Text(
                                'March 2020-Dec. 2020 End of study project: Identification and analysis of hypovigilance',
                                style: TextStyle(
                                    fontFamily: "Mainfont",
                                    color: Color.fromARGB(255, 7, 24, 68),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                        body: Center(
                          child: Hero(
                            tag: 'ListTile-Hero-2',
                            child: Material(
                              child: ListTile(
                                subtitle: const BulletedList(
                                    bullet: Icon(
                                      Icons.signal_cellular_alt_1_bar_rounded,
                                      color: Color.fromARGB(255, 16, 33, 66),
                                    ),
                                    listItems: [
                                      Text(
                                          "Analysis of research articles related to facial recognition and driver drowsiness detection",
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text('Application process modeling',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Facial detection using the “Face_recognition” model',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Facial recognition for the identification stage using deep learning Learning, using the pre-trained “VGG-Face” model',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Detecting facial features using the Dlib library “Facial_Landmarks”',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Detection of the state of driver hypovigilance according to the state of eyes and mouth',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                tileColor:
                                    const Color.fromARGB(255, 235, 236, 238),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
          Hero(
            tag: 'ListTile-Hero-3',
            child: Material(
              child: ListTile(
                title: const Text(
                    'July 2023 Introductory course: Desktop application Vehicle management DSPS/STEG-Destrict STEG fleet',
                    style: TextStyle(
                        fontFamily: "Mainfont",
                        color: Color.fromARGB(255, 234, 240, 243),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                subtitle: const Text('more details',
                    style: TextStyle(
                      fontFamily: "Mainfont",
                      color: Color.fromARGB(255, 234, 240, 243),
                    )),
                tileColor: const Color.fromARGB(255, 27, 51, 83),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                            title: const Text(
                                'July 2023 Introductory course: Desktop application Vehicle management DSPS/STEG-Destrict STEG fleet',
                                style: TextStyle(
                                    fontFamily: "Mainfont",
                                    color: Color.fromARGB(255, 7, 24, 68),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                        body: Center(
                          child: Hero(
                            tag: 'ListTile-Hero-2',
                            child: Material(
                              child: ListTile(
                                subtitle: const BulletedList(
                                    bullet: Icon(
                                      Icons.signal_cellular_alt_1_bar_rounded,
                                      color: Color.fromARGB(255, 16, 33, 66),
                                    ),
                                    listItems: [
                                      Text("Conceptual Modeling",
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Determine the different interactions between the actors and the system through the use of the use case diagram',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Creation of graphical interfaces with Tkinter',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          'Development of the backend part in Python with MySQL',
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                tileColor:
                                    const Color.fromARGB(255, 235, 236, 238),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

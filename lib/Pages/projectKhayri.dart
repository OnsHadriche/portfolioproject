import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';

class ProjectKhayri extends StatefulWidget {
  const ProjectKhayri({super.key});

  @override
  State<ProjectKhayri> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ProjectKhayri>
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
        title: const Text('Projects', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Hero(
            tag: 'ListTile-Hero',
            child: Material(
              child: ListTile(
                title: const Text("Web Application: newjourney.tn",
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
                            title: const Text("Web Application: newjourney.tn",
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
                                          "Development of a web application for a consulting agency withphp and Mysql :Appointment managementIntegration of a payment method with “FLOUCI”",
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

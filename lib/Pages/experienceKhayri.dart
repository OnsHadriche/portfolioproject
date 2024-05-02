import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';

class ExperienceKhayri extends StatefulWidget {
  const ExperienceKhayri({super.key});

  @override
  State<ExperienceKhayri> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ExperienceKhayri>
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
      appBar: AppBar(title: const Text('Experiences')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Hero(
            tag: 'ListTile-Hero',
            child: Material(
              child: ListTile(
                title: const Text(
                    'signalment IIT :End-year-project : Online platform for students to repor problemsat their university',
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
                                'signalment IIT :End-year-project : Online platform for students to repor problemsat their university',
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
                                      Text("FRAMEWORK : Spring Boot & Angular ",
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
                    "HIRE ME Mobile app that helps students post and promote their CVs.",
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
                                'HIRE ME Mobile app that helps students post and promote their CVs.',
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
                                      Text("Flutter",
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
                title: const Text('Help Informatique',
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
                            title: const Text('Help Informatique',
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
                                          "E-commerce website for computer accessory productsFrontend : ANgular + JSON-SERVER",
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
                title: const Text('TRAVEL AGENCY',
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
                            title: const Text('TRAVEL AGENCY',
                                style: TextStyle(
                                    fontFamily: "Mainfont",
                                    color: Color.fromARGB(255, 7, 24, 68),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                        body: Center(
                          child: Hero(
                            tag: 'ListTile-Hero-3',
                            child: Material(
                              child: ListTile(
                                subtitle: const BulletedList(
                                    bullet: Icon(
                                      Icons.signal_cellular_alt_1_bar_rounded,
                                      color: Color.fromARGB(255, 16, 33, 66),
                                    ),
                                    listItems: [
                                      Text(
                                          "Simple Blog Website for traveling agency FRAMEWORK: Laravel  & Vue js",
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

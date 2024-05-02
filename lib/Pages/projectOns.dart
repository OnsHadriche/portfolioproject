import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';

class ProjectOns extends StatefulWidget {
  const ProjectOns({super.key});

  @override
  State<ProjectOns> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ProjectOns>
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
                title: const Text(
                    "Mini-projet : Développemet d'un site Web e-learning",
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
                                "Mini-projet : Développemet d'un site Web e-learning",
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
                                          "Conception un site web e-learning à base de HTML5, CSS3 et JavaScript",
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
                    "Projet: Développement d'une application Web TravelMedia",
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
                                "Projet: Développement d'une application Web TravelMedia",
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
                                          "Ce site permet aux agences de voyages de partager leurs services et aux utilisitateurs de reserver les bons plans de voyages et de divertissements.",
                                          style: TextStyle(
                                              fontFamily: "Mainfont",
                                              color: Color.fromARGB(
                                                  255, 5, 11, 27),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          "les technologies utilisées: React js, redux js, redux-thank js, react-bootsrap, material UI, CSS, Node Js,Express Js, MongoDB, Mongoose, NodeMailer, Cloudinary, Nodemon, Multer, Join",
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

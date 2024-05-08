import 'package:flutter/material.dart';
import 'package:portfolioproject/Pages/certificationOns.dart';
import 'package:portfolioproject/Pages/experienceOns.dart';
import 'package:portfolioproject/Pages/projectOns.dart';
import 'package:portfolioproject/Pages/skillOns.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_filex/open_filex.dart';

// ignore: camel_case_types
class infohadrich extends StatefulWidget {
  const infohadrich({super.key});

  @override
  State<infohadrich> createState() => _infohadrichState();
}

// ignore: camel_case_types
class _infohadrichState extends State<infohadrich> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //accer theme
    ThemeData theme = Theme.of(context);
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              //Empty Space
              SizedBox(
                height: size.height * .01,
              ),
              //Developper Avatar
              Container(
                  padding: EdgeInsets.all(size.height * .02),
                  margin: EdgeInsets.all(size.height * .03),
                  decoration: BoxDecoration(
                      color: theme.cardColor, shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: size.height * 0.05,
                    backgroundColor: const Color.fromARGB(148, 82, 153, 194),
                    backgroundImage: const AssetImage("images/women2.png"),
                  )),
              //Empty Space
              //Nom de candidat
              //Empty Space
              SizedBox(
                height: size.height * .02,
              ),
              Wrap(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 8.0),
                    margin: const EdgeInsets.only(
                        left: 0.2, right: 0.3, bottom: 1, top: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "HADRICH ONS",
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Software Engineer Student",
                            style: theme.textTheme.displaySmall,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  child: IconButton(
                                icon: const FaIcon(FontAwesomeIcons.phone),
                                onPressed: () {
                                  _launchPhone();
                                },
                                color: Color.fromARGB(255, 9, 41, 63),
                              )),
                              GestureDetector(
                                  child: IconButton(
                                icon: const FaIcon(FontAwesomeIcons.linkedin),
                                onPressed: () {
                                  _launchLinkedIn();
                                },
                                color: Colors.blue,
                              )),
                              const SizedBox(width: 10),
                              GestureDetector(
                                  child: IconButton(
                                icon: const FaIcon(FontAwesomeIcons.google),
                                onPressed: () {
                                  _launchGmail();
                                },
                                color: Colors.red,
                              )),
                              const SizedBox(width: 10),
                              GestureDetector(
                                  child: IconButton(
                                icon: const FaIcon(FontAwesomeIcons.github),
                                onPressed: () {
                                  _launchGitHub();
                                },
                                color: Color.fromARGB(255, 12, 12, 12),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 8.0),
                    margin: const EdgeInsets.only(left: 0.9, right: 0.3),
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: theme.cardColor,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 197, 186, 186)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About me",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Mainfont",
                                color: theme.colorScheme.secondary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Text(
                          "I am a software engineer, highly motivated, disciplined, hardworking, and passionate about new technologies. I am always seeking new challenges and opportunities to continue developing my skills.",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Wrap(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      width: size.width,
                      height: 162,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 248, 249, 250),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("More details",
                                            style: TextStyle(
                                                fontFamily: "Mainfont",
                                                color:
                                                    Colors.lightBlue.shade900,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )),
                                Row(children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CertificatOns()),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        height: 83,
                                        width: 95,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 6)
                                            ]),
                                        child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'images/certification.jpg',
                                                  width: 50,
                                                  height: 50,
                                                ),
                                                Text(
                                                  "Certifications",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            )),
                                      )),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ExperienceOns()),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      height: 83,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 6)
                                          ]),
                                      child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'images/experience.jpg',
                                                width: 50,
                                                height: 50,
                                              ),
                                              Text(
                                                "Experiences",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProjectOns()),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      height: 83,
                                      width: 95,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 6)
                                          ]),
                                      child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'images/project.jpg',
                                                width: 50,
                                                height: 50,
                                              ),
                                              Text(
                                                "Projects",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SkillsOns()),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        height: 83,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 6)
                                            ]),
                                        child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'images/skills.png',
                                                  width: 50,
                                                  height: 50,
                                                ),
                                                Text(
                                                  "Skills",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            )),
                                      ))
                                ])
                              ],
                            ),
                          ]))
                ],
              ),
              Wrap(children: [
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton.icon(
                      onPressed: _launchPDF,
                      icon: Icon(Icons.picture_as_pdf_outlined, size: 18),
                      label: Text("Click here"),
                    ))
              ])
            ],
          ),
        ));
  }

  _launchGitHub() async {
    const url = 'https://github.com/OnsHadriche';
    // ignore: duplicate_ignore
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchPDF() async {
    OpenFilex.open("assets/pdfs/CVONSHADRICH.pdf");
  }

  _launchLinkedIn() async {
    const url = "https://www.linkedin.com/in/ons-h-b540731b5/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchGmail() async {
    const email = 'mailto:ounshadriche@gmail.com';
    if (await canLaunch(email)) {
      await launch(email);
    } else {
      throw 'Could not launch $email';
    }
  }

  _launchPhone() async {
    const email = 'tel:+216 28 766 319';
    if (await canLaunch(email)) {
      await launch(email);
    } else {
      throw 'Could not launch $email';
    }
  }
}

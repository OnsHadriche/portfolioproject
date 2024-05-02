// ignore: file_names
import 'package:flutter/material.dart'
    show
        AnimationController,
        AppBar,
        BuildContext,
        Color,
        Colors,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        MainAxisAlignment,
        MediaQuery,
        Padding,
        Radius,
        Scaffold,
        Size,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextStyle,
        Theme,
        ThemeData,
        TickerProviderStateMixin,
        Widget;
import 'package:bulleted_list/bulleted_list.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillsKhayri extends StatefulWidget {
  const SkillsKhayri({super.key});

  @override
  State<SkillsKhayri> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<SkillsKhayri>
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
    SkillsAndProgress skillProgress = SkillsAndProgress();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Skills', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightBlue[900],
        ),
        body: Column(
            children: List.generate(
          skillProgress.skillsAndProgress.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.015),
            child: SkillsBox(
              title: skillProgress.skillsAndProgress[index].name,
              percent: skillProgress.skillsAndProgress[index].progress,
            ),
          ),
        )));
  }
}
//

//Compétences
//
class SkillsBox extends StatelessWidget {
  const SkillsBox({super.key, required this.title, required this.percent});

  final String title;
  final percent;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: 2),
          LinearPercentIndicator(
            lineHeight: size.height * .02,
            width: size.width * .8,
            alignment: MainAxisAlignment.center,
            barRadius: Radius.circular(50),
            percent: percent,
            backgroundColor: Color.fromARGB(94, 70, 104, 161),
            progressColor: Color.fromARGB(255, 26, 47, 85),
          )
        ]);
  }
}

class SkillsData {
  final String name;
  final double progress;
  final String type;

  SkillsData({required this.name, required this.progress, required this.type});
}
// class ContactLis

class SkillsAndProgress {
  List<SkillsData> skillsAndProgress = [
    SkillsData(name: 'Java', progress: 0.8, type: 'Language'),
    SkillsData(name: 'C#', progress: 0.8, type: 'Language'),
    SkillsData(name: 'Python', progress: 0.7, type: 'Language'),
    SkillsData(name: 'JavaScript', progress: 1, type: 'Language'),
    SkillsData(name: 'TypeScript', progress: 0.5, type: 'Language'),
    SkillsData(name: 'HTML', progress: 1, type: 'Language'),
    SkillsData(name: 'CSS', progress: 1, type: 'Language'),
    SkillsData(name: 'Dart', progress: 0.4, type: 'Language'),
    SkillsData(name: 'PHP', progress: 0.7, type: 'Language'),
    SkillsData(name: 'Flutter', progress: 0.9, type: 'FrameWork'),
    SkillsData(name: 'Angular', progress: 0.7, type: 'FrameWork'),
  ];
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/screens/desktop/skills_section.dart';

import 'about_section.dart';
import 'home_section.dart';

class DesktopMainScreen extends StatelessWidget {
  const DesktopMainScreen({super.key});
  static const List<String> _sectiontitles = [
    "Home",
    "About",
    "Skills",
    "Projects",

    // "Contact",
  ];
  static const List<Widget> _page = [
    HomeSection(),
    AboutSection(),
    SkillsSection(),
    //"Projects",

    // "Contact",
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, double> sectionOffsets = {
      "Home": MediaQuery.of(context).size.height * 0.5,
      "About": MediaQuery.of(context).size.height * 0.4,
      "Skills": MediaQuery.of(context).size.height * 0.4,
      "Projects": MediaQuery.of(context).size.height * 3 / 1.5,
      // "Contact": MediaQuery.of(context).size.height * 4 / 1.5,
    };
    Map<String, int> pages = {
      "Home": 0,
      "About": 1,
      "Skills": 2,
      //"Projects": 3,
      // "Contact": MediaQuery.of(context).size.height * 4 / 1.5,
    };
    final ScrollController scrollController = ScrollController();
    var controller = PageController();
    return Scaffold(
      backgroundColor: Color.fromARGB(97, 199, 196, 196),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        elevation: 0.0,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 9),
          child: const Text(
            "< Muckesh />",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          for (final sectionTitle in _sectiontitles)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextButton(
                onPressed: () {
                  // scroll
                  controller.animateToPage(
                    pages[sectionTitle]!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  sectionTitle,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 9,
          )
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       const HomeSection(),
      //       const AboutSection(),
      //       const SkillsSection(),
      //       //   const ProjectsSection(),

      //       //  ContactSection(),
      //     ],
      //   ),
      // ),
      body: ListView.builder(
        controller: controller,
        itemCount: _page.length,
        itemBuilder: (BuildContext context, int index) {
          return _page[index];
        },
      ),
    );
  }
}

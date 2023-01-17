import 'package:flutter/material.dart';
import 'package:portfolio/screens/desktop/desktop_main.dart';
import 'package:portfolio/screens/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: Container(
        child: Center(child: Text("Mobile")),
      ),
      tabletBody: Container(
        child: Center(child: Text("Tablet")),
      ),
      desktopBody: DesktopMainScreen(),
    );
  }
}

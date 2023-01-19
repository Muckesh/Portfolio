import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      // height: MediaQuery.of(context).size.width * 0.4,
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 9),
        child: Column(
          children: [
            Text(
              "Projects",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "My Recent Works",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(207, 99, 96, 96)),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            // 3 Row Card
            Row(
              children: [
                Container(
                  height: height * 0.5,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/p1.jpeg',
                          fit: BoxFit.contain,
                          height: 250,
                          width: 200,
                        ),
                      ),
                      Text("data"),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Github"))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

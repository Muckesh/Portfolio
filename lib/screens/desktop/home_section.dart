import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/widgets/typingwidget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      // height: MediaQuery.of(context).size.width * 0.5,
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 9),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/linkedin (2).png",
                  height: 25,
                  width: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/instagram.png",
                  height: 25,
                  width: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/twitter.png",
                  height: 25,
                  width: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/github (1).png",
                  height: 25,
                  width: 25,
                  color: Colors.black,
                ),
              ],
            ),
            // Intro
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "< Muckesh />",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 2,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                        color: Color.fromARGB(255, 58, 56, 56),
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "I'm a passionate Flutter Developer.\n \n I develop mobile apps using Flutter.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 58, 56, 56),
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  // height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 32, 32, 32),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Download CV ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Typing animation
            // Expanded(
            //   child: Padding(
            //     padding: EdgeInsets.only(
            //         left: MediaQuery.of(context).size.width / 18),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(" I'm "),
            //         const TypingWidget(
            //           fontSize: 75,
            //         ),
            //         const SizedBox(
            //           height: 20,
            //         ),
            //         //const SocialAccountsWidget(),
            //         SizedBox(
            //           height: 50,
            //         ),
            //         const SizedBox(
            //           height: 10,
            //         ),
            //         const ElevatedButton(
            //             onPressed: null,
            //             child: const Padding(
            //               padding: EdgeInsets.symmetric(
            //                   horizontal: 8.0, vertical: 15),
            //               child: Text("Download My Resume"),
            //             )),
            //       ],
            //     ),
            //   ),
            // ),
            // Image
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(255, 87, 86, 86),
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              // margin: EdgeInsets.only(
              //     right: MediaQuery.of(context).size.width / 18 * 2, left: 10),
              // height: 300,
              height: MediaQuery.of(context).size.height * 0.5,
              // width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image.asset(
                    "assets/images/img4.png",
                    // scale: 0.6,
                    // height: MediaQuery.of(context).size.height * 0.4,
                    // width: MediaQuery.of(context).size.width * 0.4,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

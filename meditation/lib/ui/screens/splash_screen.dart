import 'package:flutter/material.dart';

import '../styles/textStyle.dart';
import '../styles/themes.dart';
import '../widgets/components/bottom_nav_bar.dart';
import '../widgets/components/get_started_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4, bottom: 20),
              child: Image.asset('images/background.jpeg'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
                child: Container(
                  height: height * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primaryTheme,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 30),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: TextWidget(
                            text: 'Discover a new skill',
                            fontSize: 23,
                            color: whiteTheme,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const TextWidget(
                          text: 'Learn from the best courses',
                          fontSize: 18,
                          color: whiteTheme,
                          fontWeight: FontWeight.w600,
                        ),
                        const Spacer(),
                        Image.asset(
                          'images/books.png',
                          width: 300,
                          height: 150,
                        ),
                        const Spacer(),
                        GetStartedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavBar()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

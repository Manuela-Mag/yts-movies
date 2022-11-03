import 'package:flutter/material.dart';

import '../../styles/textStyle.dart';
import '../../styles/themes.dart';

class GetStartedButton extends StatelessWidget {
  final VoidCallback onPressed;
  const GetStartedButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        width: width * 0.5,
        decoration: BoxDecoration(
          color: coursesTheme,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
            onPressed: onPressed,
            child: const TextWidget(
                text: 'Get Started',
                fontSize: 16,
                color: whiteTheme,
                fontWeight: FontWeight.w400)));
  }
}

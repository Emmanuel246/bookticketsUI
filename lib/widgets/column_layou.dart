import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      // style: isColor == nul ? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
      children: [
        Text(firstText,
            style: isColor == null
                ? Styles.headLineStyle3.copyWith(color: Colors.white)
                : Styles.headLineStyle3),
        const SizedBox(
          height: 5,
        ),
        Text(
          secondText,
          style: isColor == null
              ? Styles.headLineStyle4.copyWith(color: Colors.white)
              : Styles.headLineStyle4,
        ),
      ],
    );
  }
}

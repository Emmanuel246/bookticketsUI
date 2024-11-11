import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppIconText extends StatelessWidget {
  
final IconData icon;
final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                 Icon(icon,
                  color: const Color(0xFFBFC2DF),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: Styles.textStyle,
                )
              ],
            ),
          );
  }
}
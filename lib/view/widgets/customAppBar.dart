import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  const CustomAppBar({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(color: appBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/images/back.png",
            ),
          ),
        ],
      ),
    );
  }
}

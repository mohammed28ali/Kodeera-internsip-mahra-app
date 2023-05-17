import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant_colors.dart';

class NextButton extends StatelessWidget {
  final Function() onTap;

  const NextButton({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(55.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 164,
          height: 54,
          decoration: BoxDecoration(
            color: nextButtonColor.withOpacity(0.64),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/back2.png",
                height: 18.74,
                width: 20.08,
              ),
              Text(
                'التالى',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

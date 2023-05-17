import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mahra/constant_colors.dart';
import '../../controllers/fruits_view_controller.dart';
import '../widgets/customAppBar.dart';
import '../widgets/fruits_grid_view.dart';
import '../widgets/next_button.dart';
import 'apple_screen.dart';

class FruitsScreen extends StatelessWidget {
  FruitsScreen({Key? key}) : super(key: key);

  final controller = Get.put(FruitsViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const CustomAppBar(
              text: 'فواكه',
            ),
            NextButton(
              onTap: () {
                Get.to(AppleScreen());
              },
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 110.0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'اختر قسمك المفضل',
                    style: GoogleFonts.cairo(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: textColor1,
                    ),
                  ),
                ],
              ),
            ),
            FruitsGridView(),
          ],
        ),
      ),
    );
  }
}

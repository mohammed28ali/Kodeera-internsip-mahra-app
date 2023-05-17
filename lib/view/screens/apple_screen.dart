import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahra/constant_colors.dart';

import '../../controllers/apple_screen_controller.dart';
import '../widgets/avater_row.dart';
import '../widgets/customAppBar.dart';
import '../widgets/my_image_slider.dart';
import '../widgets/horizontal_list_buttons.dart';

class AppleScreen extends StatelessWidget {
   AppleScreen({Key? key}) : super(key: key);
  final controller = Get.put(AppleScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const CustomAppBar(
                    text: 'تفاح',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/forward.png",
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
                  ),
                ],
              ),
              MyImageCardSlider(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  right: 25,
                  left: 25,
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      MyHorizontalList(),
                      SizedBox(height: 25,),
                      MyAvatarRow(),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

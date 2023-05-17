import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahra/constant_colors.dart';

import '../../controllers/apple_screen_controller.dart';

class MyImageCardSlider extends StatelessWidget {
  final AppleScreenController controller = Get.put(AppleScreenController());

  MyImageCardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
              border: Border.all(color: borderColor, width: 4)),
          child: Stack(
            children: [
              PageView.builder(
                controller: controller.pageController,
                itemCount: controller.imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed('/detail/$index');
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shadowColor: borderColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Image.network(
                        controller.imageUrls[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.imageUrls.length,
                    (index) => Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentPage == index
                            ? Colors.white
                            : Colors.white54,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

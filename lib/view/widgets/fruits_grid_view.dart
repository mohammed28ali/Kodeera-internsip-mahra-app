import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant_colors.dart';
import '../../controllers/fruits_view_controller.dart';

class FruitsGridView extends StatelessWidget {
  FruitsGridView({Key? key}) : super(key: key);
  final controller = Get.put(FruitsViewController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.items.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : Padding(
            padding: const EdgeInsets.only(top: 150),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: controller.items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                childAspectRatio: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl: controller.items[index]['avatar'],
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          controller.items[index]['name'],
                          style: GoogleFonts.cairo(
                            fontSize: 17,
                            color: textColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppleScreenController extends GetxController {
  final PageController pageController = PageController();
  RxInt currentPage = 0.obs;
  final List<String> imageUrls = [
    "https://backend.maharttafl.net/images/61a71344a0643_Mokhtar_ali.jpg",
    "https://backend.maharttafl.net/images/61a71344a079c_Mokhtar_ali.jpg",
    "https://backend.maharttafl.net/images/61a71344a087e_Mokhtar_ali.jpg",
    "https://backend.maharttafl.net/images/61a71344a54ad_Mokhtar_ali.jpg",
    "https://backend.maharttafl.net/images/61a71344a55bd_Mokhtar_ali.jpg",
    "https://backend.maharttafl.net/images/61a71344a56b2_Mokhtar_ali.jpg",
    "https://backend.maharttafl.net/images/61a71344a6df2_Mokhtar_ali.jpg",
    "https://backend.maharttafl.net/images/61a71344a6eab_Mokhtar_ali.jpg"
  ];


  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentPage.value = pageController.page!.round();
    });
  }
}
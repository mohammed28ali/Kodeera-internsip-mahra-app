import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class FruitsViewController extends GetxController {
  final dio = Dio();
  RxList<Map<String, dynamic>> items = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      Response response = await dio.get(
          'https://backend.maharttafl.net/api/v2/programs/sections/show/21/define');
      if (response.statusCode == 200) {
        final data = List<Map<String, dynamic>>.from(response.data['data']);
        items.value = data;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Failed to load data: $error');
    }
  }
}

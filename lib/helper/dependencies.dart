import 'package:code_test/api/api_client.dart';
import 'package:code_test/controller/app_controller.dart';
import 'package:code_test/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(() => AppController(apiClient: Get.find()));
}

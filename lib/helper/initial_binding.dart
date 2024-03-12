import 'package:code_test/api/api_client.dart';
import 'package:code_test/controller/app_controller.dart';
import 'package:code_test/utils/app_constants.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ApiClient(appBaseUrl: AppConstants.BASE_URL));
    Get.put(AppController(apiClient: Get.find()));
  }
}

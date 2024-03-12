import 'package:code_test/api/api_client.dart';
import 'package:code_test/model/task_model.dart';
import 'package:code_test/model/user_model.dart';
import 'package:code_test/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class AppController extends GetxController implements GetxService {
  final ApiClient apiClient;
  AppController({required this.apiClient});

  List<Tasks> _taskList = [];
  List<Tasks> get taskList => _taskList;
  var tasks;
  login(String username, String password) async {
    late UserModel userModel;
    var data = {"phone": username, "password": password};
    Response response = await apiClient.postData(
        AppConstants.AUTH_URL, {"phone": username, "password": password});
    print("Login Response => ${response.statusCode} ${response.body}");
    if (response.statusCode == 200) {
      userModel = UserModel.fromJson(response.body);
    }
  }

  getAllProduct() async {
    late TaskModel userModel;
    Response response = await apiClient.get(AppConstants.ALL_PRODUCTS);
    if (response.statusCode == 200) {
      print("Response body ${response.body}");
      // ProductModel.fromJson((response.body));
      tasks = response.body;
    }
  }
}

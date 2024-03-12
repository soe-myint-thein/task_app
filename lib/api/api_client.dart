import 'package:get/get.dart';

class ApiClient extends GetConnect {
  // String token = "";
  late String appBaseUrl;
  late Map<String, String> _mainHeaders;
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 15);
    _mainHeaders = {'Content-type': 'application/json'};
    allowAutoSignedCert = true;
  }

  Future<Response> getData(String uri, data) async {
    try {
      Response response = await get(uri, headers: _mainHeaders);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body) async {
    try {
      print("Uri **** $uri");
      Response response = await post(uri, body, headers: _mainHeaders);
      print("Response of api **** $response");
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}

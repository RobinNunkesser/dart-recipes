import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rest/rest.dart';

class HttpBinGateway {

  Future<HttpRequestModel> fetchData() async {

    try {
      final httpResponse = await http.get('https://httpbin.org/get');
      final responseJson = json.decode(httpResponse.body);
      return HttpRequestModel.fromJson(responseJson as Map<String,dynamic>);
    } catch (error) {
      return Future.error(error);
    }
  }

}
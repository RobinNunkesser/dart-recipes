import 'package:http/http.dart' as http;
import 'dart:convert';
import 'response_entity.dart';
import 'response.dart';

class HttpBinGateway {

  Future<Response> fetchData() async {
    Response response;

    try {
      final httpResponse = await http.get('https://httpbin.org/get');
      final responseJson = json.decode(httpResponse.body);
      response = Response.success(ResponseEntity.fromJson(responseJson));
    } catch (e) {
      response = Response.failure(e);
    }

    return response;
  }

}
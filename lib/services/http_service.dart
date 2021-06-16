import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  HttpService._();

  static final HttpService _instance = HttpService._();

  factory HttpService() {
    return _instance;
  }

  Map<String, String> get getHeaders => {
        'Content-Type': 'application/json',
      };

  Map<String, String> get postHeaders => {
        'Content-Type': 'application/json',
      };

  Future<http.Response> get(String url) async {
    http.Response response = await http.get(
      Uri(path: url),
      headers: getHeaders,
    );

    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400) {
      throw Exception('Get error $statusCode');
    }

    return response;
  }

  Future<http.Response> post(
    String url, {
    required Map<String, String> body,
  }) async {
    http.Response response = await http.post(
      Uri(path:url),
      body: json.encode(body),
      headers: postHeaders,
    );

    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 399)
      throw Exception('Post error $statusCode');

    return response;
  }
}

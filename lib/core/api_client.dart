import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;

  ApiClient(this.baseUrl);

  Future<http.Response> get(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    return await http.get(url);
  }

  Future<http.Response> post(String endpoint,
      {Map<String, dynamic>? body}) async {
    final url = Uri.parse('$baseUrl$endpoint');
    return await http.post(url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: body != null ? jsonEncode(body) : null);
  }
}

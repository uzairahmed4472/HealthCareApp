import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;

  ApiClient(this.baseUrl);

  Future<http.Response> get(String endpoint) async {
    try {
      final url = Uri.parse('$baseUrl$endpoint');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed GET request: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error in GET request: $e');
    }
  }

  Future<http.Response> post(String endpoint,
      {Map<String, dynamic>? body}) async {
    try {
      final url = Uri.parse('$baseUrl$endpoint');
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: body != null ? jsonEncode(body) : null,
      );
      print(response.statusCode);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      } else {
        throw Exception('Failed POST request: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error in POST request: $e');
    }
  }
}

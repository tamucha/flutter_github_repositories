import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiClient {
  final http.Client client;

  ApiClient({http.Client? httpClient}) : client = httpClient ?? http.Client();

  Future<Map<String, dynamic>> get(
    String domain,
    String path,
    Map<String, dynamic>? queryParams,
  ) async {
    try {
      log('[GET] https://${domain}/${path}');
      var response = await client.get(Uri.https(domain, path, queryParams));
      return _parseResponse(response);
    } finally {
      client.close();
    }
  }

  Map<String, dynamic> _parseResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 204:
        var decodedResponse = jsonDecode(response.body) as Map<String, dynamic>;
        return decodedResponse;
      default:
        throw Exception('Failed with status: ${response.statusCode}');
    }
  }
}

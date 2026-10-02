import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiKey = "sk-××××××××";

  Future<String> generateResume(String name, String email, String phone) async {
    if (apiKey.isEmpty) {
      throw Exception('APIキーが設定されていません');
    }

    final url = Uri.parse('https://api.openai.com/v1/chat/completions');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    final body = json.encode({
      'model': 'gpt-3.5-turbo',
      'messages': [
        {'role': 'system', 'content': 'You are a helpful assistant.'},
        {'role': 'user', 'content': 'Create a resume for a person with the following information: Name: $name, Email: $email, Phone: $phone'}
      ]
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['choices'][0]['message']['content'].toString();
    } else {
      throw Exception('Failed to generate resume: ${response.body}');
    }
  }
}

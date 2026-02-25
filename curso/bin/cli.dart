import 'dart:io';
import 'package:http/http.dart' as http;

// El punto de entrada que Dart busca para ejecutar el programa
void main(List<String> arguments) {
  searchWikipedia(arguments);
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

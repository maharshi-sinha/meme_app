import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meme_app/model/meme_response.dart';

abstract class API {
  static final String _baseUrl = "https://api.imgflip.com";

  static Future<MemeResponse> getMemes() async {
    final response = await http.get(Uri.parse('$_baseUrl/get_memes'));
    if (response.statusCode == 200) {
      final MemeResponse memeResponse =
          MemeResponse.fromJson(jsonDecode(response.body));
      return memeResponse;
    } else {
      throw Exception('Failed to load meme');
    }
  }
}

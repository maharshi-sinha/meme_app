import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:meme_app/services/apis.dart';

void main() {
  test('Test API', () async {
    final Response = await API.getMemes();
    expect(Response.success, true);
  });
}

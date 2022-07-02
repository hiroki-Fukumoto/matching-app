import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for InitialApi
void main() {
  final instance = Openapi().getInitialApi();

  group(InitialApi, () {
    // アプリ起動時にコールする
    //
    //Future<InitialResponse> apiV1InitialGet() async
    test('test apiV1InitialGet', () async {
      // TODO
    });

  });
}

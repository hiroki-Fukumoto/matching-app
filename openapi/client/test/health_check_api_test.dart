import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthCheckApi
void main() {
  final instance = Openapi().getHealthCheckApi();

  group(HealthCheckApi, () {
    // health check
    //
    //Future<String> apiV1HealthCheckGet() async
    test('test apiV1HealthCheckGet', () async {
      // TODO
    });

  });
}

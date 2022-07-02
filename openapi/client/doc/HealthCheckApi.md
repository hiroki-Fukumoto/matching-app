# openapi.api.HealthCheckApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HealthCheckGet**](HealthCheckApi.md#apiv1healthcheckget) | **GET** /api/v1/health-check | health check


# **apiV1HealthCheckGet**
> String apiV1HealthCheckGet()

health check

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHealthCheckApi();

try {
    final response = api.apiV1HealthCheckGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling HealthCheckApi->apiV1HealthCheckGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


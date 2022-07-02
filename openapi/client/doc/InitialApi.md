# openapi.api.InitialApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1InitialGet**](InitialApi.md#apiv1initialget) | **GET** /api/v1/initial | アプリ起動時にコールする


# **apiV1InitialGet**
> InitialResponse apiV1InitialGet()

アプリ起動時にコールする

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInitialApi();

try {
    final response = api.apiV1InitialGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling InitialApi->apiV1InitialGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InitialResponse**](InitialResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


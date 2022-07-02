# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1LoginPost**](AuthApi.md#apiv1loginpost) | **POST** /api/v1/login | ログイン


# **apiV1LoginPost**
> LoginUserResponse apiV1LoginPost(loginRequest)

ログイン

ログイン処理を行う。JWTを新たに発行する

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final LoginRequest loginRequest = ; // LoginRequest | ログイン情報

try {
    final response = api.apiV1LoginPost(loginRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiV1LoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)| ログイン情報 | 

### Return type

[**LoginUserResponse**](LoginUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


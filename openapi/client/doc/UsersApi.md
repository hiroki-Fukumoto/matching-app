# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1UsersGet**](UsersApi.md#apiv1usersget) | **GET** /api/v1/users | ユーザー情報全件取得
[**apiV1UsersIdGet**](UsersApi.md#apiv1usersidget) | **GET** /api/v1/users/{id} | ユーザー詳細情報取得
[**apiV1UsersInfoMeGet**](UsersApi.md#apiv1usersinfomeget) | **GET** /api/v1/users/info/me | ログインユーザー情報取得
[**apiV1UsersPickupTodayGet**](UsersApi.md#apiv1userspickuptodayget) | **GET** /api/v1/users/pickup/today | 本日のピックアップユーザー取得
[**apiV1UsersPost**](UsersApi.md#apiv1userspost) | **POST** /api/v1/users | ユーザー新規作成


# **apiV1UsersGet**
> BuiltList<UserResponse> apiV1UsersGet(authorization, page, prefecture, fromAge, toAge, sort)

ユーザー情報全件取得

50件ずつ取得。検索条件がない場合は登録日が新しい順に返す（今の所）

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)
final int page = 56; // int | ページ
final int prefecture = 56; // int | 都道府県
final int fromAge = 56; // int | 年齢 From
final int toAge = 56; // int | 年齢 To
final int sort = 56; // int | 並び順

try {
    final response = api.apiV1UsersGet(authorization, page, prefecture, fromAge, toAge, sort);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiV1UsersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 
 **page** | **int**| ページ | [optional] 
 **prefecture** | **int**| 都道府県 | [optional] 
 **fromAge** | **int**| 年齢 From | [optional] 
 **toAge** | **int**| 年齢 To | [optional] 
 **sort** | **int**| 並び順 | [optional] 

### Return type

[**BuiltList&lt;UserResponse&gt;**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersIdGet**
> UserResponse apiV1UsersIdGet(authorization, id)

ユーザー詳細情報取得

指定したユーザーの詳細情報を取得する

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)
final String id = id_example; // String | id

try {
    final response = api.apiV1UsersIdGet(authorization, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiV1UsersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 
 **id** | **String**| id | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersInfoMeGet**
> MeResponse apiV1UsersInfoMeGet(authorization)

ログインユーザー情報取得

ログイン中のユーザー情報を取得する

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)

try {
    final response = api.apiV1UsersInfoMeGet(authorization);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiV1UsersInfoMeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 

### Return type

[**MeResponse**](MeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersPickupTodayGet**
> BuiltList<UserResponse> apiV1UsersPickupTodayGet(authorization)

本日のピックアップユーザー取得

ログインユーザーとは異なる性別のユーザーを20件返す

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)

try {
    final response = api.apiV1UsersPickupTodayGet(authorization);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiV1UsersPickupTodayGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 

### Return type

[**BuiltList&lt;UserResponse&gt;**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersPost**
> LoginUserResponse apiV1UsersPost(createUserRequest)

ユーザー新規作成

新しいユーザーを作成する

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final CreateUserRequest createUserRequest = ; // CreateUserRequest | ユーザー情報

try {
    final response = api.apiV1UsersPost(createUserRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiV1UsersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md)| ユーザー情報 | 

### Return type

[**LoginUserResponse**](LoginUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


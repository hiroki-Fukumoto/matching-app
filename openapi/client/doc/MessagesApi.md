# openapi.api.MessagesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1MessagesGet**](MessagesApi.md#apiv1messagesget) | **GET** /api/v1/messages | 受信済みメッセージを取得
[**apiV1MessagesIdReadPut**](MessagesApi.md#apiv1messagesidreadput) | **PUT** /api/v1/messages/{id}/read | メッセージを既読にする
[**apiV1MessagesPost**](MessagesApi.md#apiv1messagespost) | **POST** /api/v1/messages | メッセージを送る


# **apiV1MessagesGet**
> BuiltList<ReceiveMessageResponse> apiV1MessagesGet(authorization)

受信済みメッセージを取得

送信者別の受信メッセージ(最新の1通のみ)を受信日が最新のもの順に返す。

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessagesApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)

try {
    final response = api.apiV1MessagesGet(authorization);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessagesApi->apiV1MessagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 

### Return type

[**BuiltList&lt;ReceiveMessageResponse&gt;**](ReceiveMessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MessagesIdReadPut**
> apiV1MessagesIdReadPut(authorization, id)

メッセージを既読にする

メッセージを既読にする

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessagesApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)
final String id = id_example; // String | 既読にするメッセージID

try {
    api.apiV1MessagesIdReadPut(authorization, id);
} catch on DioError (e) {
    print('Exception when calling MessagesApi->apiV1MessagesIdReadPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 
 **id** | **String**| 既読にするメッセージID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MessagesPost**
> apiV1MessagesPost(authorization, sendMessageRequest)

メッセージを送る

メッセージを送る

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessagesApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)
final SendMessageRequest sendMessageRequest = ; // SendMessageRequest | メッセージを送る情報

try {
    api.apiV1MessagesPost(authorization, sendMessageRequest);
} catch on DioError (e) {
    print('Exception when calling MessagesApi->apiV1MessagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 
 **sendMessageRequest** | [**SendMessageRequest**](SendMessageRequest.md)| メッセージを送る情報 | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


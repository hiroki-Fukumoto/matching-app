# openapi.api.SendLikeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1LikesPost**](SendLikeApi.md#apiv1likespost) | **POST** /api/v1/likes | いいねを送る
[**apiV1LikesReceiveGet**](SendLikeApi.md#apiv1likesreceiveget) | **GET** /api/v1/likes/receive | 受信したいいね一覧を取得する
[**apiV1LikesReceiverIDCancelDelete**](SendLikeApi.md#apiv1likesreceiveridcanceldelete) | **DELETE** /api/v1/likes/{receiverID}/cancel | いいねを取り消す
[**apiV1LikesSendGet**](SendLikeApi.md#apiv1likessendget) | **GET** /api/v1/likes/send | 送信したいいね一覧を取得する


# **apiV1LikesPost**
> apiV1LikesPost(authorization, sendLikeRequest)

いいねを送る

いいねを送る

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSendLikeApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)
final SendLikeRequest sendLikeRequest = ; // SendLikeRequest | いいねを送る情報

try {
    api.apiV1LikesPost(authorization, sendLikeRequest);
} catch on DioError (e) {
    print('Exception when calling SendLikeApi->apiV1LikesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 
 **sendLikeRequest** | [**SendLikeRequest**](SendLikeRequest.md)| いいねを送る情報 | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LikesReceiveGet**
> BuiltList<SendLikeResponse> apiV1LikesReceiveGet(authorization)

受信したいいね一覧を取得する

登録日が新しいもの順で返す

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSendLikeApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)

try {
    final response = api.apiV1LikesReceiveGet(authorization);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SendLikeApi->apiV1LikesReceiveGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 

### Return type

[**BuiltList&lt;SendLikeResponse&gt;**](SendLikeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LikesReceiverIDCancelDelete**
> apiV1LikesReceiverIDCancelDelete(authorization, receiverID)

いいねを取り消す

いいねを取り消す

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSendLikeApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)
final String receiverID = receiverID_example; // String | 取り消しにするユーザーID

try {
    api.apiV1LikesReceiverIDCancelDelete(authorization, receiverID);
} catch on DioError (e) {
    print('Exception when calling SendLikeApi->apiV1LikesReceiverIDCancelDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 
 **receiverID** | **String**| 取り消しにするユーザーID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LikesSendGet**
> BuiltList<SendLikeResponse> apiV1LikesSendGet(authorization)

送信したいいね一覧を取得する

登録日が新しいもの順で返す

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSendLikeApi();
final String authorization = authorization_example; // String | ログイン時に取得したIDトークン(Bearer)

try {
    final response = api.apiV1LikesSendGet(authorization);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SendLikeApi->apiV1LikesSendGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| ログイン時に取得したIDトークン(Bearer) | 

### Return type

[**BuiltList&lt;SendLikeResponse&gt;**](SendLikeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


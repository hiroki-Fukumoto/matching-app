import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SendLikeApi
void main() {
  final instance = Openapi().getSendLikeApi();

  group(SendLikeApi, () {
    // いいねを送る
    //
    // いいねを送る
    //
    //Future apiV1LikesPost(String authorization, SendLikeRequest sendLikeRequest) async
    test('test apiV1LikesPost', () async {
      // TODO
    });

    // 受信したいいね一覧を取得する
    //
    // 登録日が新しいもの順で返す
    //
    //Future<BuiltList<SendLikeResponse>> apiV1LikesReceiveGet(String authorization) async
    test('test apiV1LikesReceiveGet', () async {
      // TODO
    });

    // いいねを取り消す
    //
    // いいねを取り消す
    //
    //Future apiV1LikesReceiverIDCancelDelete(String authorization, String receiverID) async
    test('test apiV1LikesReceiverIDCancelDelete', () async {
      // TODO
    });

    // 送信したいいね一覧を取得する
    //
    // 登録日が新しいもの順で返す
    //
    //Future<BuiltList<SendLikeResponse>> apiV1LikesSendGet(String authorization) async
    test('test apiV1LikesSendGet', () async {
      // TODO
    });

  });
}

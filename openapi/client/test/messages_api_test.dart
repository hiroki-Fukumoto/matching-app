import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MessagesApi
void main() {
  final instance = Openapi().getMessagesApi();

  group(MessagesApi, () {
    // 受信済みメッセージを取得
    //
    // 送信者別の受信メッセージ(最新の1通のみ)を受信日が最新のもの順に返す。
    //
    //Future<BuiltList<ReceiveMessageResponse>> apiV1MessagesGet(String authorization) async
    test('test apiV1MessagesGet', () async {
      // TODO
    });

    // メッセージを既読にする
    //
    // メッセージを既読にする
    //
    //Future apiV1MessagesIdReadPut(String authorization, String id) async
    test('test apiV1MessagesIdReadPut', () async {
      // TODO
    });

    // メッセージを送る
    //
    // メッセージを送る
    //
    //Future apiV1MessagesPost(String authorization, SendMessageRequest sendMessageRequest) async
    test('test apiV1MessagesPost', () async {
      // TODO
    });

  });
}

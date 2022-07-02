//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_message_request.g.dart';

/// SendMessageRequest
///
/// Properties:
/// * [message] - メッセージ
/// * [receiverId] - メッセージを受け取るユーザー
abstract class SendMessageRequest implements Built<SendMessageRequest, SendMessageRequestBuilder> {
    /// メッセージ
    @BuiltValueField(wireName: r'message')
    String get message;

    /// メッセージを受け取るユーザー
    @BuiltValueField(wireName: r'receiver_id')
    String get receiverId;

    SendMessageRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SendMessageRequestBuilder b) => b;

    factory SendMessageRequest([void updates(SendMessageRequestBuilder b)]) = _$SendMessageRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<SendMessageRequest> get serializer => _$SendMessageRequestSerializer();
}

class _$SendMessageRequestSerializer implements StructuredSerializer<SendMessageRequest> {
    @override
    final Iterable<Type> types = const [SendMessageRequest, _$SendMessageRequest];

    @override
    final String wireName = r'SendMessageRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, SendMessageRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'message')
            ..add(serializers.serialize(object.message,
                specifiedType: const FullType(String)));
        result
            ..add(r'receiver_id')
            ..add(serializers.serialize(object.receiverId,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    SendMessageRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SendMessageRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.message = valueDes;
                    break;
                case r'receiver_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.receiverId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


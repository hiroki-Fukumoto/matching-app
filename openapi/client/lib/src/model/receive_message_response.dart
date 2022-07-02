//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/user_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'receive_message_response.g.dart';

/// ReceiveMessageResponse
///
/// Properties:
/// * [message] - メッセージ
/// * [receiveAt] - 受信日時
/// * [sender] 
abstract class ReceiveMessageResponse implements Built<ReceiveMessageResponse, ReceiveMessageResponseBuilder> {
    /// メッセージ
    @BuiltValueField(wireName: r'message')
    String get message;

    /// 受信日時
    @BuiltValueField(wireName: r'receive_at')
    String get receiveAt;

    @BuiltValueField(wireName: r'sender')
    UserResponse get sender;

    ReceiveMessageResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ReceiveMessageResponseBuilder b) => b;

    factory ReceiveMessageResponse([void updates(ReceiveMessageResponseBuilder b)]) = _$ReceiveMessageResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<ReceiveMessageResponse> get serializer => _$ReceiveMessageResponseSerializer();
}

class _$ReceiveMessageResponseSerializer implements StructuredSerializer<ReceiveMessageResponse> {
    @override
    final Iterable<Type> types = const [ReceiveMessageResponse, _$ReceiveMessageResponse];

    @override
    final String wireName = r'ReceiveMessageResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, ReceiveMessageResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'message')
            ..add(serializers.serialize(object.message,
                specifiedType: const FullType(String)));
        result
            ..add(r'receive_at')
            ..add(serializers.serialize(object.receiveAt,
                specifiedType: const FullType(String)));
        result
            ..add(r'sender')
            ..add(serializers.serialize(object.sender,
                specifiedType: const FullType(UserResponse)));
        return result;
    }

    @override
    ReceiveMessageResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ReceiveMessageResponseBuilder();

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
                case r'receive_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.receiveAt = valueDes;
                    break;
                case r'sender':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserResponse)) as UserResponse;
                    result.sender.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}


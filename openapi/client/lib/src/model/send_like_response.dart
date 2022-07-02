//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/user_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_like_response.g.dart';

/// SendLikeResponse
///
/// Properties:
/// * [receiver] 
/// * [sentAt] - 送信日時
abstract class SendLikeResponse implements Built<SendLikeResponse, SendLikeResponseBuilder> {
    @BuiltValueField(wireName: r'receiver')
    UserResponse get receiver;

    /// 送信日時
    @BuiltValueField(wireName: r'sent_at')
    String get sentAt;

    SendLikeResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SendLikeResponseBuilder b) => b;

    factory SendLikeResponse([void updates(SendLikeResponseBuilder b)]) = _$SendLikeResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<SendLikeResponse> get serializer => _$SendLikeResponseSerializer();
}

class _$SendLikeResponseSerializer implements StructuredSerializer<SendLikeResponse> {
    @override
    final Iterable<Type> types = const [SendLikeResponse, _$SendLikeResponse];

    @override
    final String wireName = r'SendLikeResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, SendLikeResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'receiver')
            ..add(serializers.serialize(object.receiver,
                specifiedType: const FullType(UserResponse)));
        result
            ..add(r'sent_at')
            ..add(serializers.serialize(object.sentAt,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    SendLikeResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SendLikeResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'receiver':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserResponse)) as UserResponse;
                    result.receiver.replace(valueDes);
                    break;
                case r'sent_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.sentAt = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_like_request.g.dart';

/// SendLikeRequest
///
/// Properties:
/// * [receiverId] - いいねを受け取るユーザー
abstract class SendLikeRequest implements Built<SendLikeRequest, SendLikeRequestBuilder> {
    /// いいねを受け取るユーザー
    @BuiltValueField(wireName: r'receiver_id')
    String get receiverId;

    SendLikeRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SendLikeRequestBuilder b) => b;

    factory SendLikeRequest([void updates(SendLikeRequestBuilder b)]) = _$SendLikeRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<SendLikeRequest> get serializer => _$SendLikeRequestSerializer();
}

class _$SendLikeRequestSerializer implements StructuredSerializer<SendLikeRequest> {
    @override
    final Iterable<Type> types = const [SendLikeRequest, _$SendLikeRequest];

    @override
    final String wireName = r'SendLikeRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, SendLikeRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'receiver_id')
            ..add(serializers.serialize(object.receiverId,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    SendLikeRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SendLikeRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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


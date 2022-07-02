//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_response.g.dart';

/// AuthenticationResponse
///
/// Properties:
/// * [apiToken] - IDトークン
abstract class AuthenticationResponse implements Built<AuthenticationResponse, AuthenticationResponseBuilder> {
    /// IDトークン
    @BuiltValueField(wireName: r'api_token')
    String get apiToken;

    AuthenticationResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AuthenticationResponseBuilder b) => b;

    factory AuthenticationResponse([void updates(AuthenticationResponseBuilder b)]) = _$AuthenticationResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<AuthenticationResponse> get serializer => _$AuthenticationResponseSerializer();
}

class _$AuthenticationResponseSerializer implements StructuredSerializer<AuthenticationResponse> {
    @override
    final Iterable<Type> types = const [AuthenticationResponse, _$AuthenticationResponse];

    @override
    final String wireName = r'AuthenticationResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, AuthenticationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'api_token')
            ..add(serializers.serialize(object.apiToken,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    AuthenticationResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AuthenticationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'api_token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.apiToken = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


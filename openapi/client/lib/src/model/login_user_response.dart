//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/authentication_response.dart';
import 'package:openapi/src/model/me_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_user_response.g.dart';

/// LoginUserResponse
///
/// Properties:
/// * [authentication] 
/// * [me] 
abstract class LoginUserResponse implements Built<LoginUserResponse, LoginUserResponseBuilder> {
    @BuiltValueField(wireName: r'authentication')
    AuthenticationResponse get authentication;

    @BuiltValueField(wireName: r'me')
    MeResponse get me;

    LoginUserResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(LoginUserResponseBuilder b) => b;

    factory LoginUserResponse([void updates(LoginUserResponseBuilder b)]) = _$LoginUserResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginUserResponse> get serializer => _$LoginUserResponseSerializer();
}

class _$LoginUserResponseSerializer implements StructuredSerializer<LoginUserResponse> {
    @override
    final Iterable<Type> types = const [LoginUserResponse, _$LoginUserResponse];

    @override
    final String wireName = r'LoginUserResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, LoginUserResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'authentication')
            ..add(serializers.serialize(object.authentication,
                specifiedType: const FullType(AuthenticationResponse)));
        result
            ..add(r'me')
            ..add(serializers.serialize(object.me,
                specifiedType: const FullType(MeResponse)));
        return result;
    }

    @override
    LoginUserResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginUserResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'authentication':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AuthenticationResponse)) as AuthenticationResponse;
                    result.authentication.replace(valueDes);
                    break;
                case r'me':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(MeResponse)) as MeResponse;
                    result.me.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}


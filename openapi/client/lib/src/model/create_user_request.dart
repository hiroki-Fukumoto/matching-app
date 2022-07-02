//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_user_request.g.dart';

/// CreateUserRequest
///
/// Properties:
/// * [birthday] 
/// * [email] 
/// * [name] 
/// * [password] 
/// * [prefecture] 
/// * [sex] 
abstract class CreateUserRequest implements Built<CreateUserRequest, CreateUserRequestBuilder> {
    @BuiltValueField(wireName: r'birthday')
    String get birthday;

    @BuiltValueField(wireName: r'email')
    String get email;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'password')
    String get password;

    @BuiltValueField(wireName: r'prefecture')
    int get prefecture;

    @BuiltValueField(wireName: r'sex')
    String get sex;

    CreateUserRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CreateUserRequestBuilder b) => b;

    factory CreateUserRequest([void updates(CreateUserRequestBuilder b)]) = _$CreateUserRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<CreateUserRequest> get serializer => _$CreateUserRequestSerializer();
}

class _$CreateUserRequestSerializer implements StructuredSerializer<CreateUserRequest> {
    @override
    final Iterable<Type> types = const [CreateUserRequest, _$CreateUserRequest];

    @override
    final String wireName = r'CreateUserRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, CreateUserRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'birthday')
            ..add(serializers.serialize(object.birthday,
                specifiedType: const FullType(String)));
        result
            ..add(r'email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        result
            ..add(r'prefecture')
            ..add(serializers.serialize(object.prefecture,
                specifiedType: const FullType(int)));
        result
            ..add(r'sex')
            ..add(serializers.serialize(object.sex,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    CreateUserRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CreateUserRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'birthday':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.birthday = valueDes;
                    break;
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.password = valueDes;
                    break;
                case r'prefecture':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.prefecture = valueDes;
                    break;
                case r'sex':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.sex = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


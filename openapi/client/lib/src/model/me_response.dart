//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/prefecture_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'me_response.g.dart';

/// MeResponse
///
/// Properties:
/// * [avatar] - アバター
/// * [birthday] - 生年月日
/// * [email] - メールアドレス
/// * [id] - ID
/// * [like] - いいね数
/// * [message] - メッセージ
/// * [name] - 名前
/// * [prefecture] 
/// * [sex] - 性別
abstract class MeResponse implements Built<MeResponse, MeResponseBuilder> {
    /// アバター
    @BuiltValueField(wireName: r'avatar')
    String? get avatar;

    /// 生年月日
    @BuiltValueField(wireName: r'birthday')
    String get birthday;

    /// メールアドレス
    @BuiltValueField(wireName: r'email')
    String get email;

    /// ID
    @BuiltValueField(wireName: r'id')
    String get id;

    /// いいね数
    @BuiltValueField(wireName: r'like')
    int get like;

    /// メッセージ
    @BuiltValueField(wireName: r'message')
    String? get message;

    /// 名前
    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'prefecture')
    PrefectureResponse get prefecture;

    /// 性別
    @BuiltValueField(wireName: r'sex')
    String get sex;

    MeResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MeResponseBuilder b) => b;

    factory MeResponse([void updates(MeResponseBuilder b)]) = _$MeResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<MeResponse> get serializer => _$MeResponseSerializer();
}

class _$MeResponseSerializer implements StructuredSerializer<MeResponse> {
    @override
    final Iterable<Type> types = const [MeResponse, _$MeResponse];

    @override
    final String wireName = r'MeResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, MeResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.avatar != null) {
            result
                ..add(r'avatar')
                ..add(serializers.serialize(object.avatar,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'birthday')
            ..add(serializers.serialize(object.birthday,
                specifiedType: const FullType(String)));
        result
            ..add(r'email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'like')
            ..add(serializers.serialize(object.like,
                specifiedType: const FullType(int)));
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'prefecture')
            ..add(serializers.serialize(object.prefecture,
                specifiedType: const FullType(PrefectureResponse)));
        result
            ..add(r'sex')
            ..add(serializers.serialize(object.sex,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    MeResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MeResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'avatar':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.avatar = valueDes;
                    break;
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
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'like':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.like = valueDes;
                    break;
                case r'message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.message = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'prefecture':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PrefectureResponse)) as PrefectureResponse;
                    result.prefecture.replace(valueDes);
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


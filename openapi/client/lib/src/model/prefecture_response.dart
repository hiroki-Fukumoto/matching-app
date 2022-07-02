//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prefecture_response.g.dart';

/// PrefectureResponse
///
/// Properties:
/// * [code] - 都道府県コード
/// * [name] - 都道府県名
abstract class PrefectureResponse implements Built<PrefectureResponse, PrefectureResponseBuilder> {
    /// 都道府県コード
    @BuiltValueField(wireName: r'code')
    int get code;

    /// 都道府県名
    @BuiltValueField(wireName: r'name')
    String get name;

    PrefectureResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PrefectureResponseBuilder b) => b;

    factory PrefectureResponse([void updates(PrefectureResponseBuilder b)]) = _$PrefectureResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<PrefectureResponse> get serializer => _$PrefectureResponseSerializer();
}

class _$PrefectureResponseSerializer implements StructuredSerializer<PrefectureResponse> {
    @override
    final Iterable<Type> types = const [PrefectureResponse, _$PrefectureResponse];

    @override
    final String wireName = r'PrefectureResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, PrefectureResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'code')
            ..add(serializers.serialize(object.code,
                specifiedType: const FullType(int)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    PrefectureResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PrefectureResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.code = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


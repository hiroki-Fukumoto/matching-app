//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response.g.dart';

/// ErrorResponse
///
/// Properties:
/// * [error] 
/// * [errorDetail] 
/// * [status] 
abstract class ErrorResponse implements Built<ErrorResponse, ErrorResponseBuilder> {
    @BuiltValueField(wireName: r'error')
    String? get error;

    @BuiltValueField(wireName: r'error_detail')
    BuiltList<String>? get errorDetail;

    @BuiltValueField(wireName: r'status')
    int? get status;

    ErrorResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ErrorResponseBuilder b) => b;

    factory ErrorResponse([void updates(ErrorResponseBuilder b)]) = _$ErrorResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<ErrorResponse> get serializer => _$ErrorResponseSerializer();
}

class _$ErrorResponseSerializer implements StructuredSerializer<ErrorResponse> {
    @override
    final Iterable<Type> types = const [ErrorResponse, _$ErrorResponse];

    @override
    final String wireName = r'ErrorResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, ErrorResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.error != null) {
            result
                ..add(r'error')
                ..add(serializers.serialize(object.error,
                    specifiedType: const FullType(String)));
        }
        if (object.errorDetail != null) {
            result
                ..add(r'error_detail')
                ..add(serializers.serialize(object.errorDetail,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ErrorResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ErrorResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'error':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.error = valueDes;
                    break;
                case r'error_detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.errorDetail.replace(valueDes);
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.status = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


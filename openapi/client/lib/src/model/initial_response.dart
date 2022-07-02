//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initial_response.g.dart';

/// InitialResponse
///
/// Properties:
/// * [currentVersion] - current version
/// * [minVersion] - min version
abstract class InitialResponse implements Built<InitialResponse, InitialResponseBuilder> {
    /// current version
    @BuiltValueField(wireName: r'current_version')
    String get currentVersion;

    /// min version
    @BuiltValueField(wireName: r'min_version')
    String get minVersion;

    InitialResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InitialResponseBuilder b) => b;

    factory InitialResponse([void updates(InitialResponseBuilder b)]) = _$InitialResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<InitialResponse> get serializer => _$InitialResponseSerializer();
}

class _$InitialResponseSerializer implements StructuredSerializer<InitialResponse> {
    @override
    final Iterable<Type> types = const [InitialResponse, _$InitialResponse];

    @override
    final String wireName = r'InitialResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, InitialResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'current_version')
            ..add(serializers.serialize(object.currentVersion,
                specifiedType: const FullType(String)));
        result
            ..add(r'min_version')
            ..add(serializers.serialize(object.minVersion,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    InitialResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InitialResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'current_version':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.currentVersion = valueDes;
                    break;
                case r'min_version':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.minVersion = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


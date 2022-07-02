//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/authentication_response.dart';
import 'package:openapi/src/model/create_user_request.dart';
import 'package:openapi/src/model/error_response.dart';
import 'package:openapi/src/model/initial_response.dart';
import 'package:openapi/src/model/login_request.dart';
import 'package:openapi/src/model/login_user_response.dart';
import 'package:openapi/src/model/me_response.dart';
import 'package:openapi/src/model/prefecture_response.dart';
import 'package:openapi/src/model/receive_message_response.dart';
import 'package:openapi/src/model/send_like_request.dart';
import 'package:openapi/src/model/send_like_response.dart';
import 'package:openapi/src/model/send_message_request.dart';
import 'package:openapi/src/model/user_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthenticationResponse,
  CreateUserRequest,
  ErrorResponse,
  InitialResponse,
  LoginRequest,
  LoginUserResponse,
  MeResponse,
  PrefectureResponse,
  ReceiveMessageResponse,
  SendLikeRequest,
  SendLikeResponse,
  SendMessageRequest,
  UserResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReceiveMessageResponse)]),
        () => ListBuilder<ReceiveMessageResponse>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SendLikeResponse)]),
        () => ListBuilder<SendLikeResponse>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UserResponse)]),
        () => ListBuilder<UserResponse>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

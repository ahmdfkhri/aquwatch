//
//  Generated code. Do not modify.
//  source: example.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'example.pb.dart' as $0;

export 'example.pb.dart';

@$pb.GrpcServiceName('example.ExampleService')
class ExampleServiceClient extends $grpc.Client {
  static final _$getExample = $grpc.ClientMethod<$0.ExampleRequest, $0.ExampleResponse>(
      '/example.ExampleService/GetExample',
      ($0.ExampleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExampleResponse.fromBuffer(value));

  ExampleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ExampleResponse> getExample($0.ExampleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getExample, request, options: options);
  }
}

@$pb.GrpcServiceName('example.ExampleService')
abstract class ExampleServiceBase extends $grpc.Service {
  $core.String get $name => 'example.ExampleService';

  ExampleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ExampleRequest, $0.ExampleResponse>(
        'GetExample',
        getExample_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExampleRequest.fromBuffer(value),
        ($0.ExampleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ExampleResponse> getExample_Pre($grpc.ServiceCall $call, $async.Future<$0.ExampleRequest> $request) async {
    return getExample($call, await $request);
  }

  $async.Future<$0.ExampleResponse> getExample($grpc.ServiceCall call, $0.ExampleRequest request);
}

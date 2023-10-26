import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class IHSResponse<T> {
  const IHSResponse({
    required this.status,
    required this.data,
    required this.code,
    required this.msg,
  });

  factory IHSResponse.fromJson(
    Map<String, dynamic> json,
    T? Function(Object? json) fromJsonT,
  ) {
    var status = ResponseStatus.unknown;
    switch (json['status']) {
      case 'success':
        status = ResponseStatus.success;
        break;
      case 'failure':
        status = ResponseStatus.failure;
        break;
    }

    return IHSResponse(
      status: status,
      code: json['code'] as String?,
      msg: json['msg'] as String?,
      data: fromJsonT(json['data']),
    );
  }
  final ResponseStatus status;
  final T? data;
  final String? code;
  final String? msg;

  bool get isSuccess => ResponseStatus.success == status;

  bool get isFailure => ResponseStatus.failure == status;
}

enum ResponseStatus {
  success,
  failure,
  unknown;
}

typedef Empty = Object;

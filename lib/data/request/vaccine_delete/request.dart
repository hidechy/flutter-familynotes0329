import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
class VaccineDeleteRequest with _$VaccineDeleteRequest {
  /// default constructor
  const factory VaccineDeleteRequest({
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'vaccine_type_id') required int vaccineTypeId,
    @JsonKey(name: 'status') required String status,
  }) = _VaccineDeleteRequest;

  factory VaccineDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$VaccineDeleteRequestFromJson(json);
}

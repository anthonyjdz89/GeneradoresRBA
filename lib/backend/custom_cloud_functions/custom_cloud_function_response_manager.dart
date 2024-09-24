import '/backend/schema/structs/index.dart';

class BuscarMantenimientoCloudFunctionCallResponse {
  BuscarMantenimientoCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
}

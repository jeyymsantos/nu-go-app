import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_user_widget.dart' show ViewUserWidget;
import 'package:flutter/material.dart';

class ViewUserModel extends FlutterFlowModel<ViewUserWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Container widget.
  bool? confirmAction;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }

  /// Action blocks.
  Future addressLoaderAdmin(
    BuildContext context, {
    required String? provinceCode,
    required String? barangayCode,
    required String? cityCode,
  }) async {
    ApiCallResponse? provinceOutput;
    ApiCallResponse? barangayOutput;
    ApiCallResponse? cityOutput;

    logFirebaseEvent('addressLoaderAdmin_backend_call');
    provinceOutput = await AddressGroup.getSpecificProvinceCall.call(
      provinceCode: provinceCode,
    );

    logFirebaseEvent('addressLoaderAdmin_backend_call');
    barangayOutput = await AddressGroup.getSpecificBarangayCall.call(
      barangayCode: barangayCode,
    );

    logFirebaseEvent('addressLoaderAdmin_backend_call');
    cityOutput = await AddressGroup.getSpecificCityCall.call(
      cityCode: cityCode,
    );

    logFirebaseEvent('addressLoaderAdmin_update_app_state');
    FFAppState().address = AddressStruct(
      barangay: AddressGroup.getSpecificBarangayCall.name(
        (barangayOutput.jsonBody ?? ''),
      ),
      city: AddressGroup.getSpecificCityCall.name(
        (cityOutput.jsonBody ?? ''),
      ),
      province: AddressGroup.getSpecificProvinceCall.name(
        (provinceOutput.jsonBody ?? ''),
      ),
    );
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/dialog_box/confirm_password_dialog/confirm_password_dialog_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'view_user_widget.dart' show ViewUserWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
        (barangayOutput?.jsonBody ?? ''),
      ),
      city: AddressGroup.getSpecificCityCall.name(
        (cityOutput?.jsonBody ?? ''),
      ),
      province: AddressGroup.getSpecificProvinceCall.name(
        (provinceOutput?.jsonBody ?? ''),
      ),
    );
  }
}

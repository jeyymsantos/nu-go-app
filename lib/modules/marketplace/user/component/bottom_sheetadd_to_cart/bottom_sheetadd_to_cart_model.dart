import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheetadd_to_cart_widget.dart' show BottomSheetaddToCartWidget;
import 'package:flutter/material.dart';

class BottomSheetaddToCartModel
    extends FlutterFlowModel<BottomSheetaddToCartWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? confirmDialog;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  OrdersRecord? getOrder;

  @override
  void initState(BuildContext context) {
    quantityTextControllerValidator = _quantityTextControllerValidator;
  }

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();
  }
}

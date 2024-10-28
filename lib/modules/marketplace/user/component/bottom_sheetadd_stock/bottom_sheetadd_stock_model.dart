import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheetadd_stock_widget.dart' show BottomSheetaddStockWidget;
import 'package:flutter/material.dart';

class BottomSheetaddStockModel
    extends FlutterFlowModel<BottomSheetaddStockWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();
  }
}

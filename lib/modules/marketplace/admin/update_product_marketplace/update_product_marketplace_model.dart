import '/backend/firebase_storage/storage.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'update_product_marketplace_widget.dart'
    show UpdateProductMarketplaceWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateProductMarketplaceModel
    extends FlutterFlowModel<UpdateProductMarketplaceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for itemName widget.
  FocusNode? itemNameFocusNode1;
  TextEditingController? itemNameTextController1;
  String? Function(BuildContext, String?)? itemNameTextController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for itemName widget.
  FocusNode? itemNameFocusNode2;
  TextEditingController? itemNameTextController2;
  String? Function(BuildContext, String?)? itemNameTextController2Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for itemName widget.
  FocusNode? itemNameFocusNode3;
  TextEditingController? itemNameTextController3;
  String? Function(BuildContext, String?)? itemNameTextController3Validator;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    itemNameFocusNode1?.dispose();
    itemNameTextController1?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    itemNameFocusNode2?.dispose();
    itemNameTextController2?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    itemNameFocusNode3?.dispose();
    itemNameTextController3?.dispose();
  }
}

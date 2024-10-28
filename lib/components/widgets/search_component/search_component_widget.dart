import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'search_component_model.dart';
export 'search_component_model.dart';

class SearchComponentWidget extends StatefulWidget {
  const SearchComponentWidget({super.key});

  @override
  State<SearchComponentWidget> createState() => _SearchComponentWidgetState();
}

class _SearchComponentWidgetState extends State<SearchComponentWidget> {
  late SearchComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchComponentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.textController,
      focusNode: _model.textFieldFocusNode,
      autofocus: false,
      textInputAction: TextInputAction.next,
      obscureText: false,
      decoration: InputDecoration(
        labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Montserrat',
              letterSpacing: 0.0,
            ),
        hintText: 'Search event',
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 25.0),
        prefixIcon: Icon(
          Icons.search_sharp,
          color: FlutterFlowTheme.of(context).primary,
          size: 18.0,
        ),
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Montserrat',
            letterSpacing: 0.0,
          ),
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      validator: _model.textControllerValidator.asValidator(context),
    );
  }
}

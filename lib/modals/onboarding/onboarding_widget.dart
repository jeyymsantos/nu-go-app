import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'onboarding_model.dart';
export 'onboarding_model.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  late OnboardingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Container(
              width: 100.0,
              height: 7.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryText,
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              'Onboarding',
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 2.0, 10.0, 0.0),
            child: Text(
              'Don’t forget to register with your department. We\'re eager to tailor your dashboard to align with your preferences and community.',
              textAlign: TextAlign.justify,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Clan Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    useGoogleFonts: false,
                    lineHeight: 1.1,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
            child: TextFormField(
              controller: _model.textController1,
              focusNode: _model.textFieldFocusNode1,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Section',
                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
              validator: _model.textController1Validator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController1 ??=
                  FormFieldController<String>(null),
              options: const [
                'School of Business, and Accountancy',
                'School of Education, Arts, and Sciences',
                'School of Engineering, Architecture, and Technology',
                'School of Tourism, and Hospitality Management'
              ],
              onChanged: (val) => setState(() => _model.dropDownValue1 = val),
              width: double.infinity,
              height: 50.0,
              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Clan Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    useGoogleFonts: false,
                  ),
              hintText: 'Select your School',
              searchHintText: 'Search for an item...',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: true,
              isMultiSelect: false,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController2 ??=
                  FormFieldController<String>(null),
              options: const [
                'BS Information Technology',
                'BS Civil Engineering',
                'BS Computer Engineering',
                'BS Architecture'
              ],
              onChanged: (val) => setState(() => _model.dropDownValue2 = val),
              width: double.infinity,
              height: 50.0,
              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Clan Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    useGoogleFonts: false,
                  ),
              hintText: 'Select your Department',
              searchHintText: 'Search for an item...',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: true,
              isMultiSelect: false,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController3 ??=
                  FormFieldController<String>(null),
              options: const ['Male', 'Female', 'Non-binary'],
              onChanged: (val) => setState(() => _model.dropDownValue3 = val),
              width: double.infinity,
              height: 50.0,
              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Clan Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    useGoogleFonts: false,
                  ),
              hintText: 'Gender',
              searchHintText: 'Search for an item...',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: true,
              isMultiSelect: false,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
            child: TextFormField(
              controller: _model.textController2,
              focusNode: _model.textFieldFocusNode2,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Address',
                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
              validator: _model.textController2Validator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: const Color(0xFFD2E0EF),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Birthday',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Clan Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Icon(
                          Icons.calendar_month,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Onboard Me!',
              options: FFButtonOptions(
                width: double.infinity,
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Clan Pro',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

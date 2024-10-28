import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'onboard_two_model.dart';
export 'onboard_two_model.dart';

class OnboardTwoWidget extends StatefulWidget {
  const OnboardTwoWidget({
    super.key,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    this.suffixName,
    required this.civilStatus,
    required this.sex,
    required this.phoneNumber,
    required this.birthDate,
    required this.citizenship,
    required this.religion,
    this.houseNumber,
    required this.streetName,
    required this.barangay,
    required this.municipality,
    required this.province,
  });

  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? suffixName;
  final String? civilStatus;
  final String? sex;
  final String? phoneNumber;
  final DateTime? birthDate;
  final String? citizenship;
  final String? religion;
  final String? houseNumber;
  final String? streetName;
  final String? barangay;
  final String? municipality;
  final String? province;

  @override
  State<OnboardTwoWidget> createState() => _OnboardTwoWidgetState();
}

class _OnboardTwoWidgetState extends State<OnboardTwoWidget>
    with TickerProviderStateMixin {
  late OnboardTwoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardTwoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'onboard_two'});
    _model.studentNoFieldTextController ??= TextEditingController();
    _model.studentNoFieldFocusNode ??= FocusNode();

    _model.sectionFieldTextController ??= TextEditingController();
    _model.sectionFieldFocusNode ??= FocusNode();

    _model.employeeNoFieldTextController ??= TextEditingController();
    _model.employeeNoFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1400.0.ms,
            color: const Color(0xFF35408E),
            angle: 0.576,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('ONBOARD_TWO_PAGE_Icon_t5rbrnj0_ON_TAP');
                      logFirebaseEvent('Icon_navigate_back');
                      context.safePop();
                    },
                    child: Icon(
                      Icons.chevron_left_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 39.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 6.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).pulsatingLine,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).pulsatingLine,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, -1.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            valueOrDefault(
                                                        currentUserDocument
                                                            ?.role,
                                                        '') ==
                                                    'Student'
                                                ? 'Academic Information'
                                                : 'Work Information',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/NUGo_Logo_Inverted_for_White.png',
                                          width: 40.0,
                                          height: 20.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 40.0, 15.0),
                                    child: Text(
                                      'To start, kindly fill out the following fields for your onboarding.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Builder(
                  builder: (context) {
                    if (valueOrDefault(currentUserDocument?.role, '') ==
                        'Student') {
                      return Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Form(
                                  key: _model.formKey1,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller: _model
                                              .studentNoFieldTextController,
                                          focusNode:
                                              _model.studentNoFieldFocusNode,
                                          autofocus: true,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Student ID',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      letterSpacing: 0.0,
                                                    ),
                                            alignLabelWithHint: false,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .studentNoFieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child:
                                            StreamBuilder<List<SchoolsRecord>>(
                                          stream: querySchoolsRecord(
                                            queryBuilder: (schoolsRecord) =>
                                                schoolsRecord
                                                    .orderBy('school_name'),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitChasingDots(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<SchoolsRecord>
                                                schoolDropdownSchoolsRecordList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .schoolDropdownValueController ??=
                                                  FormFieldController<String>(
                                                _model.schoolDropdownValue ??=
                                                    '',
                                              ),
                                              options: List<String>.from(
                                                  schoolDropdownSchoolsRecordList
                                                      .map(
                                                          (e) => e.reference.id)
                                                      .toList()),
                                              optionLabels:
                                                  schoolDropdownSchoolsRecordList
                                                      .map((e) => e.schoolName)
                                                      .toList(),
                                              onChanged: (val) async {
                                                safeSetState(() => _model
                                                    .schoolDropdownValue = val);
                                                logFirebaseEvent(
                                                    'ONBOARD_TWO_school_dropdown_ON_FORM_WIDG');
                                                logFirebaseEvent(
                                                    'school_dropdown_custom_action');
                                                _model.schoolOutput =
                                                    await actions
                                                        .getSchoolDocument(
                                                  _model.schoolDropdownValue!,
                                                );

                                                safeSetState(() {});
                                              },
                                              width: double.infinity,
                                              height: 50.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        letterSpacing: 0.0,
                                                      ),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'School',
                                              searchHintText:
                                                  'Search for an item...',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderWidth: 0.5,
                                              borderRadius: 14.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                      if (_model.schoolDropdownValue != null &&
                                          _model.schoolDropdownValue != '')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: StreamBuilder<
                                              List<ProgramsRecord>>(
                                            stream: queryProgramsRecord(
                                              queryBuilder: (programsRecord) =>
                                                  programsRecord
                                                      .where(
                                                        'school_under',
                                                        isEqualTo: _model
                                                            .schoolOutput
                                                            ?.reference,
                                                      )
                                                      .orderBy('program_name'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitChasingDots(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProgramsRecord>
                                                  departmentProgramsRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .departmentValueController ??=
                                                    FormFieldController<String>(
                                                  _model.departmentValue ??= '',
                                                ),
                                                options: List<String>.from(
                                                    departmentProgramsRecordList
                                                        .map((e) =>
                                                            e.reference.id)
                                                        .toList()),
                                                optionLabels:
                                                    departmentProgramsRecordList
                                                        .map((e) =>
                                                            e.programName)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .departmentValue = val),
                                                width: double.infinity,
                                                height: 50.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Department',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderWidth: 0.5,
                                                borderRadius: 14.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.sectionFieldTextController,
                                          focusNode:
                                              _model.sectionFieldFocusNode,
                                          autofocus: true,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Section',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      letterSpacing: 0.0,
                                                    ),
                                            alignLabelWithHint: false,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 6,
                                          validator: _model
                                              .sectionFieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'ONBOARD_TWO_PAGE_next_button_ON_TAP');
                                            logFirebaseEvent(
                                                'next_button_validate_form');
                                            if (_model.formKey1.currentState ==
                                                    null ||
                                                !_model.formKey1.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            if (_model.schoolDropdownValue ==
                                                null) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'School is required',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                              return;
                                            }
                                            if (_model.departmentValue ==
                                                null) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Department field is requied',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                              return;
                                            }
                                            logFirebaseEvent(
                                                'next_button_custom_action');
                                            _model.programOutput = await actions
                                                .getProgramDocument(
                                              _model.departmentValue!,
                                            );
                                            logFirebaseEvent(
                                                'next_button_navigate_to');

                                            context.pushNamed(
                                              'onboard_three',
                                              queryParameters: {
                                                'firstName': serializeParam(
                                                  widget.firstName,
                                                  ParamType.String,
                                                ),
                                                'middleName': serializeParam(
                                                  widget.middleName,
                                                  ParamType.String,
                                                ),
                                                'lastName': serializeParam(
                                                  widget.lastName,
                                                  ParamType.String,
                                                ),
                                                'suffixName': serializeParam(
                                                  widget.suffixName,
                                                  ParamType.String,
                                                ),
                                                'civilStatus': serializeParam(
                                                  widget.civilStatus,
                                                  ParamType.String,
                                                ),
                                                'sex': serializeParam(
                                                  widget.sex,
                                                  ParamType.String,
                                                ),
                                                'phoneNumber': serializeParam(
                                                  widget.phoneNumber,
                                                  ParamType.String,
                                                ),
                                                'birthdate': serializeParam(
                                                  widget.birthDate,
                                                  ParamType.DateTime,
                                                ),
                                                'citizenship': serializeParam(
                                                  widget.citizenship,
                                                  ParamType.String,
                                                ),
                                                'religion': serializeParam(
                                                  widget.religion,
                                                  ParamType.String,
                                                ),
                                                'houseNumber': serializeParam(
                                                  widget.houseNumber,
                                                  ParamType.String,
                                                ),
                                                'streetName': serializeParam(
                                                  widget.streetName,
                                                  ParamType.String,
                                                ),
                                                'barangay': serializeParam(
                                                  widget.barangay,
                                                  ParamType.String,
                                                ),
                                                'municipality': serializeParam(
                                                  widget.municipality,
                                                  ParamType.String,
                                                ),
                                                'province': serializeParam(
                                                  widget.province,
                                                  ParamType.String,
                                                ),
                                                'school': serializeParam(
                                                  _model
                                                      .schoolOutput?.reference,
                                                  ParamType.DocumentReference,
                                                ),
                                                'department': serializeParam(
                                                  _model
                                                      .programOutput?.reference,
                                                  ParamType.DocumentReference,
                                                ),
                                                'section': serializeParam(
                                                  _model
                                                      .sectionFieldTextController
                                                      .text,
                                                  ParamType.String,
                                                ),
                                                'idNumber': serializeParam(
                                                  _model
                                                      .studentNoFieldTextController
                                                      .text,
                                                  ParamType.String,
                                                ),
                                                'role': serializeParam(
                                                  'Student',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                          text: 'Next',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 50.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Form(
                                  key: _model.formKey2,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 15.0),
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .honorificsValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: const [
                                              'Ar.',
                                              'Atty.',
                                              'Dr.',
                                              'Engr.',
                                              'Mr.',
                                              'Mrs.',
                                              'Ms.',
                                              'Mx.',
                                              'Prof.'
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model.honorificsValue =
                                                    val),
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Honorifics',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor: Colors.transparent,
                                            borderWidth: 0.5,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 15.0),
                                          child:
                                              FutureBuilder<List<RolesRecord>>(
                                            future: queryRolesRecordOnce(
                                              queryBuilder: (rolesRecord) =>
                                                  rolesRecord
                                                      .orderBy('role_name'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitChasingDots(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RolesRecord>
                                                  empRoleRolesRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .empRoleValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: empRoleRolesRecordList
                                                    .map((e) => e.roleName)
                                                    .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .empRoleValue = val),
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Role',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.5,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      if ((_model.empRoleValue == 'Full-Time Faculty') ||
                                          (_model.empRoleValue ==
                                              'Part-Time Faculty') ||
                                          (_model.empRoleValue == 'Dean') ||
                                          (_model.empRoleValue ==
                                              'Program Chair'))
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 15.0),
                                              child: StreamBuilder<
                                                  List<SchoolsRecord>>(
                                                stream: querySchoolsRecord(
                                                  queryBuilder:
                                                      (schoolsRecord) =>
                                                          schoolsRecord.orderBy(
                                                              'school_name'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            SpinKitChasingDots(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<SchoolsRecord>
                                                      empSchoolDropdownSchoolsRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .empSchoolDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.empSchoolDropdownValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        empSchoolDropdownSchoolsRecordList
                                                            .map((e) =>
                                                                e.reference.id)
                                                            .toList()),
                                                    optionLabels:
                                                        empSchoolDropdownSchoolsRecordList
                                                            .map((e) =>
                                                                e.schoolName)
                                                            .toList(),
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                              .empSchoolDropdownValue =
                                                          val);
                                                      logFirebaseEvent(
                                                          'ONBOARD_TWO_emp_school_dropdown_ON_FORM_');
                                                      logFirebaseEvent(
                                                          'emp_school_dropdown_custom_action');
                                                      _model.empSchoolOutput =
                                                          await actions
                                                              .getSchoolDocument(
                                                        _model
                                                            .empSchoolDropdownValue!,
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'School',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    borderWidth: 0.5,
                                                    borderRadius: 14.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                            if ((_model.empSchoolDropdownValue !=
                                                        null &&
                                                    _model.empSchoolDropdownValue !=
                                                        '') &&
                                                (_model.empRoleValue != 'Dean'))
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 15.0),
                                                child: StreamBuilder<
                                                    List<ProgramsRecord>>(
                                                  stream: queryProgramsRecord(
                                                    queryBuilder:
                                                        (programsRecord) =>
                                                            programsRecord
                                                                .where(
                                                                  'school_under',
                                                                  isEqualTo: _model
                                                                      .empSchoolOutput
                                                                      ?.reference,
                                                                )
                                                                .orderBy(
                                                                    'program_name'),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              SpinKitChasingDots(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ProgramsRecord>
                                                        empDepartmentProgramsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .empDepartmentValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.empDepartmentValue ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          empDepartmentProgramsRecordList
                                                              .map((e) => e
                                                                  .reference.id)
                                                              .toList()),
                                                      optionLabels:
                                                          empDepartmentProgramsRecordList
                                                              .map((e) =>
                                                                  e.programName)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.empDepartmentValue =
                                                                  val),
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Department',
                                                      searchHintText:
                                                          'Search for an item...',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderWidth: 0.5,
                                                      borderRadius: 14.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      TextFormField(
                                        controller: _model
                                            .employeeNoFieldTextController,
                                        focusNode:
                                            _model.employeeNoFieldFocusNode,
                                        autofocus: true,
                                        textInputAction: TextInputAction.next,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Employee ID',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    letterSpacing: 0.0,
                                                  ),
                                          alignLabelWithHint: false,
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                letterSpacing: 0.0,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                        maxLength: 7,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.enforced,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .employeeNoFieldTextControllerValidator
                                            .asValidator(context),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'ONBOARD_TWO_PAGE_next_button_ON_TAP');
                                            logFirebaseEvent(
                                                'next_button_validate_form');
                                            if (_model.formKey2.currentState ==
                                                    null ||
                                                !_model.formKey2.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            if (_model.honorificsValue ==
                                                null) {
                                              return;
                                            }
                                            if (_model.empRoleValue == null) {
                                              return;
                                            }
                                            if ((_model.empRoleValue ==
                                                    'Full-Time Faculty') ||
                                                (_model.empRoleValue ==
                                                    'Part-Time Faculty')) {
                                              logFirebaseEvent(
                                                  'next_button_custom_action');
                                              _model.empProgramOutput =
                                                  await actions
                                                      .getProgramDocument(
                                                _model.empDepartmentValue!,
                                              );
                                              logFirebaseEvent(
                                                  'next_button_navigate_to');

                                              context.pushNamed(
                                                'onboard_three',
                                                queryParameters: {
                                                  'firstName': serializeParam(
                                                    widget.firstName,
                                                    ParamType.String,
                                                  ),
                                                  'middleName': serializeParam(
                                                    widget.middleName,
                                                    ParamType.String,
                                                  ),
                                                  'lastName': serializeParam(
                                                    widget.lastName,
                                                    ParamType.String,
                                                  ),
                                                  'suffixName': serializeParam(
                                                    widget.suffixName,
                                                    ParamType.String,
                                                  ),
                                                  'civilStatus': serializeParam(
                                                    widget.civilStatus,
                                                    ParamType.String,
                                                  ),
                                                  'sex': serializeParam(
                                                    widget.sex,
                                                    ParamType.String,
                                                  ),
                                                  'phoneNumber': serializeParam(
                                                    widget.phoneNumber,
                                                    ParamType.String,
                                                  ),
                                                  'birthdate': serializeParam(
                                                    widget.birthDate,
                                                    ParamType.DateTime,
                                                  ),
                                                  'citizenship': serializeParam(
                                                    widget.citizenship,
                                                    ParamType.String,
                                                  ),
                                                  'religion': serializeParam(
                                                    widget.religion,
                                                    ParamType.String,
                                                  ),
                                                  'houseNumber': serializeParam(
                                                    widget.houseNumber,
                                                    ParamType.String,
                                                  ),
                                                  'streetName': serializeParam(
                                                    widget.streetName,
                                                    ParamType.String,
                                                  ),
                                                  'barangay': serializeParam(
                                                    widget.barangay,
                                                    ParamType.String,
                                                  ),
                                                  'municipality':
                                                      serializeParam(
                                                    widget.municipality,
                                                    ParamType.String,
                                                  ),
                                                  'province': serializeParam(
                                                    widget.province,
                                                    ParamType.String,
                                                  ),
                                                  'idNumber': serializeParam(
                                                    _model
                                                        .employeeNoFieldTextController
                                                        .text,
                                                    ParamType.String,
                                                  ),
                                                  'school': serializeParam(
                                                    _model.empSchoolOutput
                                                        ?.reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'department': serializeParam(
                                                    _model.empProgramOutput
                                                        ?.reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'role': serializeParam(
                                                    _model.empRoleValue,
                                                    ParamType.String,
                                                  ),
                                                  'honorifics': serializeParam(
                                                    _model.honorificsValue,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            } else {
                                              logFirebaseEvent(
                                                  'next_button_navigate_to');

                                              context.pushNamed(
                                                'onboard_three',
                                                queryParameters: {
                                                  'firstName': serializeParam(
                                                    widget.firstName,
                                                    ParamType.String,
                                                  ),
                                                  'middleName': serializeParam(
                                                    widget.middleName,
                                                    ParamType.String,
                                                  ),
                                                  'lastName': serializeParam(
                                                    widget.lastName,
                                                    ParamType.String,
                                                  ),
                                                  'suffixName': serializeParam(
                                                    widget.suffixName,
                                                    ParamType.String,
                                                  ),
                                                  'civilStatus': serializeParam(
                                                    widget.civilStatus,
                                                    ParamType.String,
                                                  ),
                                                  'sex': serializeParam(
                                                    widget.sex,
                                                    ParamType.String,
                                                  ),
                                                  'phoneNumber': serializeParam(
                                                    widget.phoneNumber,
                                                    ParamType.String,
                                                  ),
                                                  'birthdate': serializeParam(
                                                    widget.birthDate,
                                                    ParamType.DateTime,
                                                  ),
                                                  'citizenship': serializeParam(
                                                    widget.citizenship,
                                                    ParamType.String,
                                                  ),
                                                  'religion': serializeParam(
                                                    widget.religion,
                                                    ParamType.String,
                                                  ),
                                                  'houseNumber': serializeParam(
                                                    widget.houseNumber,
                                                    ParamType.String,
                                                  ),
                                                  'streetName': serializeParam(
                                                    widget.streetName,
                                                    ParamType.String,
                                                  ),
                                                  'barangay': serializeParam(
                                                    widget.barangay,
                                                    ParamType.String,
                                                  ),
                                                  'municipality':
                                                      serializeParam(
                                                    widget.municipality,
                                                    ParamType.String,
                                                  ),
                                                  'province': serializeParam(
                                                    widget.province,
                                                    ParamType.String,
                                                  ),
                                                  'idNumber': serializeParam(
                                                    _model
                                                        .employeeNoFieldTextController
                                                        .text,
                                                    ParamType.String,
                                                  ),
                                                  'school': serializeParam(
                                                    _model.empSchoolOutput
                                                        ?.reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'role': serializeParam(
                                                    _model.empRoleValue,
                                                    ParamType.String,
                                                  ),
                                                  'honorifics': serializeParam(
                                                    _model.honorificsValue,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            }

                                            safeSetState(() {});
                                          },
                                          text: 'Next',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 50.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

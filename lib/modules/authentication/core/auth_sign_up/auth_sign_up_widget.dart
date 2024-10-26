import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth_sign_up_model.dart';
export 'auth_sign_up_model.dart';

class AuthSignUpWidget extends StatefulWidget {
  const AuthSignUpWidget({super.key});

  @override
  State<AuthSignUpWidget> createState() => _AuthSignUpWidgetState();
}

class _AuthSignUpWidgetState extends State<AuthSignUpWidget> {
  late AuthSignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthSignUpModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'auth_sign_up'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('AUTH_SIGN_UP_auth_sign_up_ON_INIT_STATE');
      logFirebaseEvent('auth_sign_up_update_app_state');
      FFAppState().hasUppercase = false;
      FFAppState().hasLowercase = false;
      FFAppState().hasNumber = false;
      FFAppState().hasSpecialCharacter = false;
      FFAppState().hasMinimumLength = false;
      safeSetState(() {});
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.emailFieldTextController ??= TextEditingController();
    _model.emailFieldFocusNode ??= FocusNode();

    _model.passwordFieldTextController ??= TextEditingController();
    _model.passwordFieldFocusNode ??= FocusNode();
    _model.passwordFieldFocusNode!.addListener(
      () async {
        logFirebaseEvent('AUTH_SIGN_UP_password_field_ON_FOCUS_CHA');
        logFirebaseEvent('password_field_custom_action');
        await actions.validatePassword(
          _model.passwordFieldTextController.text,
        );
      },
    );
    _model.confirmPasswordFieldTextController ??= TextEditingController();
    _model.confirmPasswordFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sign Up',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'Mabuhay, Nationalian! ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          'assets/images/NU_GO_-_No_BG.png',
                                          width: 160.0,
                                          height: 115.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller:
                                              _model.emailFieldTextController,
                                          focusNode: _model.emailFieldFocusNode,
                                          autofocus: false,
                                          autofillHints: [AutofillHints.email],
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Email Address',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
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
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 25.0),
                                            prefixIcon: Icon(
                                              Icons.alternate_email,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 18.0,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.start,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: _model
                                              .emailFieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.passwordFieldTextController,
                                        focusNode:
                                            _model.passwordFieldFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.passwordFieldTextController',
                                          Duration(milliseconds: 2000),
                                          () async {
                                            logFirebaseEvent(
                                                'AUTH_SIGN_UP_password_field_ON_TEXTFIELD');
                                            logFirebaseEvent(
                                                'password_field_custom_action');
                                            await actions.validatePassword(
                                              _model.passwordFieldTextController
                                                  .text,
                                            );
                                          },
                                        ),
                                        onFieldSubmitted: (_) async {
                                          logFirebaseEvent(
                                              'AUTH_SIGN_UP_password_field_ON_TEXTFIELD');
                                          logFirebaseEvent(
                                              'password_field_custom_action');
                                          await actions.validatePassword(
                                            _model.passwordFieldTextController
                                                .text,
                                          );
                                        },
                                        autofocus: false,
                                        autofillHints: [AutofillHints.password],
                                        textInputAction: TextInputAction.next,
                                        obscureText:
                                            !_model.passwordFieldVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
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
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 25.0, 0.0, 25.0),
                                          prefixIcon: Icon(
                                            Icons.lock_outline_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18.0,
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () => safeSetState(
                                              () => _model
                                                      .passwordFieldVisibility =
                                                  !_model
                                                      .passwordFieldVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordFieldVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        validator: _model
                                            .passwordFieldTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    if (_model.passwordFieldTextController
                                                .text !=
                                            null &&
                                        _model.passwordFieldTextController
                                                .text !=
                                            '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                'Atleast one (1) uppercase letter',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: FFAppState()
                                                              .hasUppercase
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                'Atleast one (1) lowercase letter',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: FFAppState()
                                                              .hasLowercase
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                'Atleast one (1) number',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: FFAppState()
                                                              .hasNumber
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                'Atleast one (1) special character',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: FFAppState()
                                                              .hasSpecialCharacter
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                'Atleast eight (8) characters',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: FFAppState()
                                                              .hasMinimumLength
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller: _model
                                            .confirmPasswordFieldTextController,
                                        focusNode: _model
                                            .confirmPasswordFieldFocusNode,
                                        autofocus: false,
                                        autofillHints: [AutofillHints.password],
                                        textInputAction: TextInputAction.done,
                                        obscureText: !_model
                                            .confirmPasswordFieldVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Confirm Password',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
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
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 25.0, 0.0, 25.0),
                                          prefixIcon: Icon(
                                            Icons.lock_outline_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18.0,
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () => safeSetState(
                                              () => _model
                                                      .confirmPasswordFieldVisibility =
                                                  !_model
                                                      .confirmPasswordFieldVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.confirmPasswordFieldVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        validator: _model
                                            .confirmPasswordFieldTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            child: Checkbox(
                                              value: _model
                                                      .agreeCheckBoxSUValue ??=
                                                  false,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                        .agreeCheckBoxSUValue =
                                                    newValue!);
                                              },
                                              side: BorderSide(
                                                width: 2,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                          ),
                                          Flexible(
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'By signing up, you agree to our ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Privacy Statement',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                    mouseCursor:
                                                        SystemMouseCursors
                                                            .click,
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () async {
                                                            logFirebaseEvent(
                                                                'AUTH_SIGN_UP_RichTextSpan_b93yp1vn_ON_TA');
                                                            logFirebaseEvent(
                                                                'RichTextSpan_navigate_to');

                                                            context.pushNamed(
                                                                'privacy_statement');
                                                          },
                                                  ),
                                                  TextSpan(
                                                    text: ' and ',
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Terms and Condition',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                    mouseCursor:
                                                        SystemMouseCursors
                                                            .click,
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () async {
                                                            logFirebaseEvent(
                                                                'AUTH_SIGN_UP_RichTextSpan_92pfbpqb_ON_TA');
                                                            logFirebaseEvent(
                                                                'RichTextSpan_navigate_to');

                                                            context.pushNamed(
                                                                'terms');
                                                          },
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' consent to the use of your personal data.',
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.2,
                                                        ),
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: ((_model
                                                        .agreeCheckBoxSUValue ==
                                                    false) ||
                                                ((FFAppState().hasUppercase == false) ||
                                                    (FFAppState()
                                                            .hasLowercase ==
                                                        false) ||
                                                    (FFAppState().hasNumber ==
                                                        false) ||
                                                    (FFAppState()
                                                            .hasSpecialCharacter ==
                                                        false) ||
                                                    (FFAppState()
                                                            .hasMinimumLength ==
                                                        false)))
                                            ? null
                                            : () async {
                                                logFirebaseEvent(
                                                    'AUTH_SIGN_UP_PAGE_login_button_ON_TAP');
                                                logFirebaseEvent(
                                                    'login_button_validate_form');
                                                if (_model.formKey
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                logFirebaseEvent(
                                                    'login_button_custom_action');
                                                _model.emailTypeResult =
                                                    await actions
                                                        .checkEmailViaRegEx(
                                                  _model
                                                      .emailFieldTextController
                                                      .text,
                                                );
                                                logFirebaseEvent(
                                                    'login_button_auth');
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                if (_model
                                                        .passwordFieldTextController
                                                        .text !=
                                                    _model
                                                        .confirmPasswordFieldTextController
                                                        .text) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Passwords don\'t match!',
                                                      ),
                                                    ),
                                                  );
                                                  return;
                                                }

                                                final user = await authManager
                                                    .createAccountWithEmail(
                                                  context,
                                                  _model
                                                      .emailFieldTextController
                                                      .text,
                                                  _model
                                                      .passwordFieldTextController
                                                      .text,
                                                );
                                                if (user == null) {
                                                  return;
                                                }

                                                await UsersRecord.collection
                                                    .doc(user.uid)
                                                    .update({
                                                  ...createUsersRecordData(
                                                    email: _model
                                                        .emailFieldTextController
                                                        .text,
                                                    onboarding: false,
                                                    emailType:
                                                        _model.emailTypeResult,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'created_time': FieldValue
                                                          .serverTimestamp(),
                                                    },
                                                  ),
                                                });

                                                logFirebaseEvent(
                                                    'login_button_auth');
                                                await authManager
                                                    .sendEmailVerification();
                                                logFirebaseEvent(
                                                    'login_button_backend_call');

                                                await currentUserReference!
                                                    .update(
                                                        createUsersRecordData(
                                                  role:
                                                      _model.emailTypeResult ==
                                                              'student'
                                                          ? 'Student'
                                                          : 'Pending',
                                                ));
                                                logFirebaseEvent(
                                                    'login_button_action_block');
                                                await action_blocks.logs(
                                                  context,
                                                  type: 'signed up',
                                                  module: 'user',
                                                  doneToName:
                                                      currentUserDisplayName,
                                                );
                                                logFirebaseEvent(
                                                    'login_button_reset_form_fields');
                                                safeSetState(() {
                                                  _model
                                                      .emailFieldTextController
                                                      ?.clear();
                                                  _model
                                                      .passwordFieldTextController
                                                      ?.clear();
                                                  _model
                                                      .confirmPasswordFieldTextController
                                                      ?.clear();
                                                });
                                                logFirebaseEvent(
                                                    'login_button_navigate_to');

                                                context.goNamedAuth(
                                                  'auth_verify_email',
                                                  context.mounted,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );

                                                safeSetState(() {});
                                              },
                                        text: 'Sign Up',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .changeButton,
                                          disabledTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                      ),
                                    ),
                                    if (valueOrDefault<bool>(
                                      (isWeb
                                                  ? MediaQuery.viewInsetsOf(
                                                              context)
                                                          .bottom >
                                                      0
                                                  : _isKeyboardVisible) ==
                                              true
                                          ? false
                                          : true,
                                      false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                'Already have an account?',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'AUTH_SIGN_UP_PAGE_Text_gwck3hcs_ON_TAP');
                                                logFirebaseEvent(
                                                    'Text_navigate_back');
                                                context.safePop();
                                              },
                                              child: Text(
                                                'Sign In',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (valueOrDefault<bool>(
                                      (isWeb
                                                  ? MediaQuery.viewInsetsOf(
                                                              context)
                                                          .bottom >
                                                      0
                                                  : _isKeyboardVisible) ==
                                              true
                                          ? false
                                          : true,
                                      false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 50.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 6.0),
                                                child: Text(
                                                  'P O W E R E D   B Y',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'AUTH_SIGN_UP_PAGE_Image_8f6k3t06_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Image_navigate_to');

                                                    context.pushNamed(
                                                        'onboard_one');
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/synergy_blue.png',
                                                      width: 70.0,
                                                      height: 30.0,
                                                      fit: BoxFit.contain,
                                                      alignment:
                                                          Alignment(0.0, 0.0),
                                                    ),
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

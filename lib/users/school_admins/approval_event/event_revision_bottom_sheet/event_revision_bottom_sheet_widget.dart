import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'event_revision_bottom_sheet_model.dart';
export 'event_revision_bottom_sheet_model.dart';

class EventRevisionBottomSheetWidget extends StatefulWidget {
  const EventRevisionBottomSheetWidget({
    super.key,
    required this.eventDoc,
  });

  final EventsRecord? eventDoc;

  @override
  State<EventRevisionBottomSheetWidget> createState() =>
      _EventRevisionBottomSheetWidgetState();
}

class _EventRevisionBottomSheetWidgetState
    extends State<EventRevisionBottomSheetWidget> {
  late EventRevisionBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventRevisionBottomSheetModel());

    _model.revisionMessageTextController ??= TextEditingController();
    _model.revisionMessageFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Container(
              width: 80.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).changeButton,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Text(
                      'By placing them under revision, you\'re essentially pausing their progress and requiring them to fulfill certain criteria to proceed with their proposal. \n\nAt this time, kindly write down the reasons for their event proposal\'s revision.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: TextFormField(
                      controller: _model.revisionMessageTextController,
                      focusNode: _model.revisionMessageFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Write down the reason of revision',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).textBoxBorder,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      maxLines: 5,
                      maxLength: 500,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      validator: _model.revisionMessageTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'EVENT_REVISION_BOTTOM_SHEET_REVISION_STA');
                          logFirebaseEvent('Button_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          logFirebaseEvent('Button_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: WebViewAware(
                                  child: ConfirmDialogBoxWidget(
                                    confirmDialogTitle: 'Needs Revision',
                                    confirmDialogMeesage:
                                        'Are you sure you want to require some revisions to this request?',
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(
                              () => _model.confirmDialogRevision = value));

                          if (_model.confirmDialogRevision!) {
                            logFirebaseEvent('Button_alert_dialog');
                            await showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: InformationDialogBoxWidget(
                                      infoDialogTitle: 'Needs Revision',
                                      infoDialogMeesage:
                                          'Favorable action is withheld pending the revision of the event information. The feedback will be given to the organization and have the chance to resubmit the request.',
                                    ),
                                  ),
                                );
                              },
                            );

                            logFirebaseEvent('Button_action_block');
                            await action_blocks.dynamicRevision(
                              context,
                              reviseWhat: 'event',
                              approvalList:
                                  widget!.eventDoc?.currentApprovalSignatory,
                              approvalStep: functions.getUserIndex(
                                  widget!.eventDoc!.currentApprovalSignatory
                                      .map((e) => e.approvalUser)
                                      .withoutNulls
                                      .toList(),
                                  currentUserReference!),
                              reviseEventRef: widget!.eventDoc?.reference,
                              reviseFeedback:
                                  _model.revisionMessageTextController.text,
                              reviseToWho: widget!.eventDoc?.eventOrganizer,
                              reviseName: widget!.eventDoc?.eventName,
                            );
                          } else {
                            logFirebaseEvent('Button_alert_dialog');
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: InformationDialogBoxWidget(
                                      infoDialogTitle: 'Action Cancelled',
                                      infoDialogMeesage:
                                          'This action has been cancelled and no changes has been made.',
                                    ),
                                  ),
                                );
                              },
                            );
                          }

                          logFirebaseEvent('Button_reset_form_fields');
                          safeSetState(() {
                            _model.revisionMessageTextController?.clear();
                          });
                          logFirebaseEvent('Button_bottom_sheet');
                          Navigator.pop(context);

                          safeSetState(() {});
                        },
                        text: 'Revision Status',
                        icon: Icon(
                          FFIcons.kpause5,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).accent2,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}

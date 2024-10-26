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
import 'event_decline_bottom_sheet_model.dart';
export 'event_decline_bottom_sheet_model.dart';

class EventDeclineBottomSheetWidget extends StatefulWidget {
  const EventDeclineBottomSheetWidget({
    super.key,
    required this.eventDoc,
  });

  final EventsRecord? eventDoc;

  @override
  State<EventDeclineBottomSheetWidget> createState() =>
      _EventDeclineBottomSheetWidgetState();
}

class _EventDeclineBottomSheetWidgetState
    extends State<EventDeclineBottomSheetWidget> {
  late EventDeclineBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventDeclineBottomSheetModel());

    _model.declineMessageTextController ??= TextEditingController();
    _model.declineMessageFocusNode ??= FocusNode();

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Text(
                        'By declining the event proposal, they cannot proceed further in the process. \n\nPlease specify the reason for the application\'s rejection below.',
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
                        controller: _model.declineMessageTextController,
                        focusNode: _model.declineMessageFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                          hintText:
                              'Write down the reason for declining the organization',
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
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
                        validator: _model.declineMessageTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'EVENT_DECLINE_BOTTOM_SHEET_DECLINE_EVENT');
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
                                      confirmDialogTitle: 'Decline Request',
                                      confirmDialogMeesage:
                                          'Are you sure you want to decline this request?',
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(
                                () => _model.confirmDialogDecline = value));

                            if (_model.confirmDialogDecline!) {
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
                                        infoDialogTitle: 'Request Declined',
                                        infoDialogMeesage:
                                            'Favorable action has been withheld, and the event is not approved. This will not push through and will be reflected on the history of this request. Thank you!',
                                      ),
                                    ),
                                  );
                                },
                              );

                              logFirebaseEvent('Button_action_block');
                              await action_blocks.dynamicDecline(
                                context,
                                declineWhat: 'event',
                                approvalList:
                                    widget!.eventDoc?.currentApprovalSignatory,
                                approvalStep: functions.getUserIndex(
                                    widget!.eventDoc!.currentApprovalSignatory
                                        .map((e) => e.approvalUser)
                                        .withoutNulls
                                        .toList(),
                                    currentUserReference!),
                                declineEventRef: widget!.eventDoc?.reference,
                                declineFeedback:
                                    _model.declineMessageTextController.text,
                                declineToWho: widget!.eventDoc?.eventOrganizer,
                                declineName: widget!.eventDoc?.eventName,
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
                              _model.declineMessageTextController?.clear();
                            });
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);

                            safeSetState(() {});
                          },
                          text: 'Decline Event',
                          icon: Icon(
                            Icons.close,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 30.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).error,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
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
      ),
    );
  }
}

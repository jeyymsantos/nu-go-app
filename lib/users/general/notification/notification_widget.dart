import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/widgets/empty_notification/empty_notification_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/users/general/component/notif_item/notif_item_widget.dart';
import 'dart:math';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_model.dart';
export 'notification_model.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget>
    with TickerProviderStateMixin {
  late NotificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'notification'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('NOTIFICATION_notification_ON_INIT_STATE');
      logFirebaseEvent('notification_wait__delay');
      await Future.delayed(const Duration(milliseconds: 1000));
      logFirebaseEvent('notification_backend_call');

      await currentUserReference!.update({
        ...mapToFirestore(
          {
            'last_notification_read_time': FieldValue.serverTimestamp(),
          },
        ),
      });
    });

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 500.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'notifItemOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 750.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 750.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
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
    return FutureBuilder<List<NotificationsRecord>>(
      future: queryNotificationsRecordOnce(
        queryBuilder: (notificationsRecord) => notificationsRecord
            .where(Filter.or(
              Filter(
                'type',
                isEqualTo: 'global',
              ),
              Filter(
                'user',
                isEqualTo: currentUserReference,
              ),
              Filter(
                'multiple_users',
                arrayContains: currentUserReference,
              ),
            ))
            .orderBy('created_on', descending: true),
        limit: 10,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitChasingDots(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<NotificationsRecord> notificationNotificationsRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: wrapWithModel(
                      model: _model.titleHeaderComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleHeaderComponentWidget(
                        titleText: 'Notifications',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final allNotif =
                            notificationNotificationsRecordList.toList();
                        if (allNotif.isEmpty) {
                          return EmptyNotificationWidget();
                        }

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: allNotif.length,
                          itemBuilder: (context, allNotifIndex) {
                            final allNotifItem = allNotif[allNotifIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: FutureBuilder<UsersRecord>(
                                    future: UsersRecord.getDocumentOnce(
                                        allNotifItem.createdBy!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitChasingDots(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }

                                      final notifItemUsersRecord =
                                          snapshot.data!;

                                      return wrapWithModel(
                                        model: _model.notifItemModels.getModel(
                                          random_data.randomString(
                                            0,
                                            0,
                                            true,
                                            true,
                                            true,
                                          ),
                                          allNotifIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: NotifItemWidget(
                                          key: Key(
                                            'Keyll0_${random_data.randomString(
                                              0,
                                              0,
                                              true,
                                              true,
                                              true,
                                            )}',
                                          ),
                                          iconImage:
                                              notifItemUsersRecord.photoUrl,
                                          title: allNotifItem.title,
                                          time: allNotifItem.createdOn!,
                                          message: allNotifItem.message,
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'notifItemOnPageLoadAnimation']!);
                                    },
                                  ),
                                ),
                                StyledDivider(
                                  height: 20.0,
                                  thickness: 0.5,
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  lineStyle: DividerLineStyle.dashed,
                                ),
                              ],
                            );
                          },
                        ).animateOnPageLoad(
                            animationsMap['listViewOnPageLoadAnimation']!);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

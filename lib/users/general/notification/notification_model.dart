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
import 'notification_widget.dart' show NotificationWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  Local state fields for this page.

  DateTime? userCreatedTime;

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;
  // Models for notifItem dynamic component.
  late FlutterFlowDynamicModels<NotifItemModel> notifItemModels;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
    notifItemModels = FlutterFlowDynamicModels(() => NotifItemModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
    notifItemModels.dispose();
  }
}

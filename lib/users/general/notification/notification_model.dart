import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/users/general/component/notif_item/notif_item_widget.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';

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

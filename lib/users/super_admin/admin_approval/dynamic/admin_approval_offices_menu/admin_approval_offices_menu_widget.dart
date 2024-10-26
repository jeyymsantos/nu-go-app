import '/components/widgets/card_with_description/card_with_description_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_approval_offices_menu_model.dart';
export 'admin_approval_offices_menu_model.dart';

class AdminApprovalOfficesMenuWidget extends StatefulWidget {
  const AdminApprovalOfficesMenuWidget({super.key});

  @override
  State<AdminApprovalOfficesMenuWidget> createState() =>
      _AdminApprovalOfficesMenuWidgetState();
}

class _AdminApprovalOfficesMenuWidgetState
    extends State<AdminApprovalOfficesMenuWidget> {
  late AdminApprovalOfficesMenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminApprovalOfficesMenuModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'admin_approval_offices_menu'});
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
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.titleHeaderComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: TitleHeaderComponentWidget(
                          titleText: 'Approval Management',
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_APPROVAL_OFFICES_MENU_Container_d2');
                                      logFirebaseEvent(
                                          'cardWithDescription_navigate_to');

                                      context.pushNamed(
                                        'admin_approval_offices_create',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.cardWithDescriptionModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardWithDescriptionWidget(
                                        title: 'Create Approval Set',
                                        description:
                                            'Create a new approval set to be used on certain modules.',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_APPROVAL_OFFICES_MENU_Container_ge');
                                      logFirebaseEvent(
                                          'cardWithDescription_navigate_to');

                                      context
                                          .pushNamed('admin_approval_manage');
                                    },
                                    child: wrapWithModel(
                                      model: _model.cardWithDescriptionModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardWithDescriptionWidget(
                                        title: 'Assign Approval Set',
                                        description:
                                            'Assign an approval set to a certain module/forms of the application.',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_APPROVAL_OFFICES_MENU_Container_6y');
                                      logFirebaseEvent(
                                          'cardWithDescription_navigate_to');

                                      context
                                          .pushNamed('admin_approval_manage');
                                    },
                                    child: wrapWithModel(
                                      model: _model.cardWithDescriptionModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardWithDescriptionWidget(
                                        title: 'Manage Approval Set',
                                        description:
                                            'View, update, or delete any approval set on the app.',
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 10.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

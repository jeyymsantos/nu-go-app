import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'purchase_marketplace_model.dart';
export 'purchase_marketplace_model.dart';

class PurchaseMarketplaceWidget extends StatefulWidget {
  const PurchaseMarketplaceWidget({
    super.key,
    required this.order,
  });

  final OrdersRecord? order;

  @override
  State<PurchaseMarketplaceWidget> createState() =>
      _PurchaseMarketplaceWidgetState();
}

class _PurchaseMarketplaceWidgetState extends State<PurchaseMarketplaceWidget> {
  late PurchaseMarketplaceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PurchaseMarketplaceModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'purchase_marketplace'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PURCHASE_MARKETPLACE_purchase_marketplac');
      logFirebaseEvent('purchase_marketplace_update_app_state');
      FFAppState().index = 0;
      safeSetState(() {});
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.titleHeaderComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const TitleHeaderComponentWidget(
                    titleText: 'Confirm Order',
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: StreamBuilder<DefaultsRecord>(
                          stream: DefaultsRecord.getDocument(
                              FFAppState().defaultID!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitChasingDots(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }

                            final containerDefaultsRecord = snapshot.data!;

                            return Container(
                              width: double.infinity,
                              height: 497.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: FlutterFlowWebView(
                                content: containerDefaultsRecord.paymongoLink,
                                bypass: false,
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 0.8,
                                verticalScroll: false,
                                horizontalScroll: false,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 29.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Builder(
                      builder: (context) => FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'PURCHASE_MARKETPLACE_COMPLETE_ORDER_BTN_');
                          var shouldSetState = false;
                          logFirebaseEvent('Button_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: const AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: WebViewAware(
                                  child: GestureDetector(
                                    onTap: () =>
                                        FocusScope.of(dialogContext).unfocus(),
                                    child: const ConfirmDialogBoxWidget(
                                      confirmDialogTitle: 'Complete Order',
                                      confirmDialogMeesage:
                                          'Are you sure you want to complete your order?',
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).then((value) =>
                              safeSetState(() => _model.confirmDialog = value));

                          shouldSetState = true;
                          if (_model.confirmDialog!) {
                            logFirebaseEvent('Button_backend_call');

                            await widget.order!.reference.update({
                              ...createOrdersRecordData(
                                status: 'For Claiming',
                              ),
                              ...mapToFirestore(
                                {
                                  'updated_at': FieldValue.serverTimestamp(),
                                  'order_placed': FieldValue.serverTimestamp(),
                                },
                              ),
                            });
                            while (FFAppState().index <
                                widget.order!.products.length) {
                              logFirebaseEvent('Button_backend_call');
                              _model.productDoc =
                                  await ProductsRecord.getDocumentOnce(widget
                                      .order!
                                      .products[FFAppState().index]
                                      .product!);
                              shouldSetState = true;
                              logFirebaseEvent('Button_backend_call');

                              await widget
                                  .order!.products[FFAppState().index].product!
                                  .update({
                                ...createProductsRecordData(
                                  stock: _model.productDoc!.stock -
                                      widget
                                          .order!
                                          .products[FFAppState().index]
                                          .quantity,
                                ),
                                ...mapToFirestore(
                                  {
                                    'updated_at': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                              logFirebaseEvent('Button_backend_call');

                              await ProductInventoryRecord.createDoc(widget
                                      .order!
                                      .products[FFAppState().index]
                                      .product!)
                                  .set({
                                ...createProductInventoryRecordData(
                                  type: 'Sold',
                                  quantityChange: (widget
                                          .order?.products[FFAppState().index])
                                      ?.quantity,
                                  previousStock: _model.productDoc?.stock,
                                  newStock: _model.productDoc!.stock -
                                      widget
                                          .order!
                                          .products[FFAppState().index]
                                          .quantity,
                                  userReference: currentUserReference,
                                ),
                                ...mapToFirestore(
                                  {
                                    'timestamp': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                              logFirebaseEvent('Button_update_app_state');
                              FFAppState().index = FFAppState().index + 1;
                              safeSetState(() {});
                            }
                            logFirebaseEvent('Button_alert_dialog');
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: GestureDetector(
                                      onTap: () => FocusScope.of(dialogContext)
                                          .unfocus(),
                                      child: const CongratulationsDialogBoxWidget(
                                        congratsDialogTitle: 'Order Processed',
                                        congratsDialogMeesage:
                                            'Your order has been processed. You may now claim your item on Bulldogs Exchange.',
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );

                            logFirebaseEvent('Button_navigate_back');
                            context.safePop();
                            if (shouldSetState) safeSetState(() {});
                            return;
                          } else {
                            logFirebaseEvent('Button_alert_dialog');
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: GestureDetector(
                                      onTap: () => FocusScope.of(dialogContext)
                                          .unfocus(),
                                      child: const InformationDialogBoxWidget(
                                        infoDialogTitle: 'Action Cancelled',
                                        infoDialogMeesage:
                                            'Your action has been cancelled.',
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );

                            logFirebaseEvent('Button_navigate_back');
                            context.safePop();
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }

                          if (shouldSetState) safeSetState(() {});
                        },
                        text: 'Complete Order',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}

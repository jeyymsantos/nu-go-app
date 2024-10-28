import '/backend/backend.dart';
import '/components/dialog_box/confirm_dialog_box/confirm_dialog_box_widget.dart';
import '/components/dialog_box/congratulations_dialog_box/congratulations_dialog_box_widget.dart';
import '/components/dialog_box/failed_dialog_box/failed_dialog_box_widget.dart';
import '/components/dialog_box/information_dialog_box/information_dialog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'bottom_sheet_update_cart_model.dart';
export 'bottom_sheet_update_cart_model.dart';

class BottomSheetUpdateCartWidget extends StatefulWidget {
  const BottomSheetUpdateCartWidget({
    super.key,
    required this.product,
    required this.quantity,
    required this.subTotal,
    required this.productType,
    required this.order,
  });

  final ProductsRecord? product;
  final int? quantity;
  final double? subTotal;
  final OrdersStruct? productType;
  final OrdersRecord? order;

  @override
  State<BottomSheetUpdateCartWidget> createState() =>
      _BottomSheetUpdateCartWidgetState();
}

class _BottomSheetUpdateCartWidgetState
    extends State<BottomSheetUpdateCartWidget> {
  late BottomSheetUpdateCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetUpdateCartModel());

    _model.quantityTextController ??=
        TextEditingController(text: widget.quantity?.toString());
    _model.quantityFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
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
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Container(
                width: 80.0,
                height: 10.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).changeButton,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 1.0, 1.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          widget.product?.image,
                          'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FNUGo%20Logo.png?alt=media&token=c16de93e-c20d-4bd1-90f0-e3d2c07fe740',
                        ),
                        width: 70.0,
                        height: 70.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.product?.name,
                              'NU Bag',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              formatNumber(
                                widget.product?.price,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                                currency: '₱',
                              ),
                              '₱1,000.00',
                            ),
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Quantity',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Text(
                        ' *',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).error,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.quantityTextController,
                              focusNode: _model.quantityFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Type here...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .textBoxBorder,
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.number,
                              validator: _model.quantityTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]'))
                              ],
                            ),
                          ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Builder(
              builder: (context) => Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'BOTTOM_SHEET_UPDATE_CART_UPDATE_ORDER_BT');
                    var shouldSetState = false;
                    logFirebaseEvent('Button_validate_form');
                    if (_model.formKey.currentState == null ||
                        !_model.formKey.currentState!.validate()) {
                      return;
                    }
                    if (functions.convertToDouble(
                            _model.quantityTextController.text) >
                        widget.product!.stock.toDouble()) {
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
                            child: const WebViewAware(
                              child: FailedDialogBoxWidget(
                                failedDialogTitle: 'Quantity Exceeded',
                                failedDialogMeesage:
                                    'You have exceeded from the available stocks of the product. Enter a valid quantity to proceed.',
                              ),
                            ),
                          );
                        },
                      );

                      if (shouldSetState) safeSetState(() {});
                      return;
                    } else if (functions.convertToDouble(
                            _model.quantityTextController.text) <=
                        0.0) {
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
                            child: const WebViewAware(
                              child: FailedDialogBoxWidget(
                                failedDialogTitle: 'Invalid Quantity',
                                failedDialogMeesage:
                                    'You cannot input zero or negative values in quantity. Make sure to input valid counting number.',
                              ),
                            ),
                          );
                        },
                      );

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
                            child: const WebViewAware(
                              child: ConfirmDialogBoxWidget(
                                confirmDialogTitle: 'Update Item',
                                confirmDialogMeesage:
                                    'Are you sure you want to update this item on your cart?',
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
                          ...mapToFirestore(
                            {
                              'products': FieldValue.arrayRemove([
                                getOrdersFirestoreData(
                                  updateOrdersStruct(
                                    widget.productType,
                                    clearUnsetFields: false,
                                  ),
                                  true,
                                )
                              ]),
                              'total_price':
                                  FieldValue.increment(-(widget.subTotal!)),
                              'updated_at': FieldValue.serverTimestamp(),
                            },
                          ),
                        });
                        logFirebaseEvent('Button_backend_call');

                        await widget.order!.reference.update({
                          ...mapToFirestore(
                            {
                              'products': FieldValue.arrayUnion([
                                getOrdersFirestoreData(
                                  createOrdersStruct(
                                    product: widget.product?.reference,
                                    quantity: int.tryParse(
                                        _model.quantityTextController.text),
                                    subTotal: widget.product!.price *
                                        double.parse(
                                            _model.quantityTextController.text),
                                    clearUnsetFields: false,
                                  ),
                                  true,
                                )
                              ]),
                              'total_price': FieldValue.increment(
                                  widget.product!.price *
                                      double.parse(
                                          _model.quantityTextController.text)),
                              'updated_at': FieldValue.serverTimestamp(),
                            },
                          ),
                        });
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
                              child: const WebViewAware(
                                child: CongratulationsDialogBoxWidget(
                                  congratsDialogTitle: 'Item Updated',
                                  congratsDialogMeesage:
                                      'Product has been updated to your cart!',
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
                              child: const WebViewAware(
                                child: InformationDialogBoxWidget(
                                  infoDialogTitle: 'Action Cancelled',
                                  infoDialogMeesage:
                                      'Your action has been cancelled. Product has not been added to the cart.',
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
                    }

                    if (shouldSetState) safeSetState(() {});
                  },
                  text: 'Update Order',
                  icon: const Icon(
                    FFIcons.kbag,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

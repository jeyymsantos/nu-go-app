import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_card_marketplace_model.dart';
export 'item_card_marketplace_model.dart';

class ItemCardMarketplaceWidget extends StatefulWidget {
  /// Create a component wherein it is a product card to display the details of
  /// the product, just like viewing a shopping app
  const ItemCardMarketplaceWidget({
    super.key,
    required this.name,
    required this.price,
    required this.sold,
    required this.photo,
  });

  final String? name;
  final double? price;
  final int? sold;
  final String? photo;

  @override
  State<ItemCardMarketplaceWidget> createState() =>
      _ItemCardMarketplaceWidgetState();
}

class _ItemCardMarketplaceWidgetState extends State<ItemCardMarketplaceWidget> {
  late ItemCardMarketplaceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemCardMarketplaceModel());

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
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x0B000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                valueOrDefault<String>(
                  widget!.photo,
                  'https://firebasestorage.googleapis.com/v0/b/nu-go-4239c.appspot.com/o/defaults%2FNUGo%20Logo.png?alt=media&token=c16de93e-c20d-4bd1-90f0-e3d2c07fe740',
                ),
                width: double.infinity,
                height: 115.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget!.name,
                'Sample Product',
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    formatNumber(
                      widget!.price,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.automatic,
                      currency: '₱',
                    ),
                    '₱1,000.00',
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ].divide(SizedBox(height: 5.0)),
        ),
      ),
    );
  }
}

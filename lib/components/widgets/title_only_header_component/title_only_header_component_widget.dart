import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'title_only_header_component_model.dart';
export 'title_only_header_component_model.dart';

class TitleOnlyHeaderComponentWidget extends StatefulWidget {
  const TitleOnlyHeaderComponentWidget({
    super.key,
    required this.titleText,
  });

  final String? titleText;

  @override
  State<TitleOnlyHeaderComponentWidget> createState() =>
      _TitleOnlyHeaderComponentWidgetState();
}

class _TitleOnlyHeaderComponentWidgetState
    extends State<TitleOnlyHeaderComponentWidget> {
  late TitleOnlyHeaderComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TitleOnlyHeaderComponentModel());

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
      width: double.infinity,
      height: 50.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/NU_GO_-_No_BG.png',
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
